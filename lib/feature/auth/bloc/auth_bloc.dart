import 'dart:async';
import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oldtom_admin/feature/auth/repo/auth_error.dart';
import 'package:oldtom_admin/feature/auth/repo/auth_repo.dart';
import 'package:oldtom_admin/widget/snackbar/model/app_mex_model.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo authRepo;
  late final StreamSubscription<User?> _authSubscription;

  AuthBloc({required this.authRepo}) : super(AuthState.init()) {
    // Init
    on<_InitAuthEvent>((event, emit) {
      _init(event, emit);
    });
    // Listen Firebase Auth Changes
    on<_ListenAuthStateChangedAuthEvent>((event, emit) {
      _listenAuthStateChangedEvent(event, emit);
    });
    _authSubscription = authRepo.authStateChanges.listen((user) {
      log('[ASSURDO] ${user == null ? 'null' : user.email ?? 'null'}');
      add(_ListenAuthStateChangedAuthEvent(user: user));
    });
    // Sign In With Email And Password
    on<_SignInWithEmailAndPasswordAuthEvent>((event, emit) async {
      await _signInWithEmailAndPassword(event, emit);
    });
    // Sign Out
    on<_SignOutAuthEvent>((event, emit) async {
      await _signOut(event, emit);
    });
  }

  // ====================
  // Add Event
  // ====================
  // Init
  void init() => add(const _InitAuthEvent());

  // Sign In With Email And Password
  void signInWithEmailAndPassword({
    required String email,
    required String password,
  }) => add(
    _SignInWithEmailAndPasswordAuthEvent(email: email, password: password),
  );

  // Sign Out
  void signOut() => add(_SignOutAuthEvent());

  // ====================
  // Add Bloc
  // ====================

  // _Init
  void _init(_InitAuthEvent event, Emitter<AuthState> emit) {
    emit(AuthState.init());
  }

  // _Listen Auth State Changed
  void _listenAuthStateChangedEvent(
    _ListenAuthStateChangedAuthEvent event,
    Emitter<AuthState> emit,
  ) {
    if (event.user != null) {
      emit(
        state.copyWith(
          userStatus: UserStatus.authenticated,
          currentUser: event.user,
        ),
      );
    } else {
      emit(
        state.copyWith(
          userStatus: UserStatus.unauthenticated,
          currentUser: null,
        ),
      );
    }
  }

  // _Sign In With Email And Password
  Future<void> _signInWithEmailAndPassword(
    _SignInWithEmailAndPasswordAuthEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(state.copyWith(status: AuthStatus.loading));
      await authRepo.signInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      emit(state.copyWith(status: AuthStatus.success));
    } catch (e) {
      _showMex(emit, error: e, mexType: MexType.error);
    }
  }

  // Log out
  Future<void> _signOut(
    _SignOutAuthEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      await authRepo.signOut();
      log('Logout');
      emit(
        state.copyWith(
          userStatus: UserStatus.unauthenticated,
          currentUser: null,
        ),
      );
    } catch (e) {
      _showMex(emit, error: e, mexType: MexType.error);
    }
  }

  // Show Toast Message
  void _showMex(
    Emitter<AuthState> emit, {
    required Object error,
    required MexType mexType,
  }) {
    final String errMex = AuthError.handleError(error);
    emit(
      state.copyWith(
        status: AuthStatus.error,
        appMex: AppMex(mex: errMex, type: mexType),
      ),
    );
    // Emit status
    emit(state.copyWith(status: AuthStatus.init));
  }

  @override
  Future<void> close() {
    _authSubscription.cancel();
    return super.close();
  }
}
