part of 'auth_bloc.dart';

enum AuthStatus { init, loading, success, error }

enum UserStatus { unauthenticated, authenticated }

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.init) AuthStatus status,
    @Default(UserStatus.unauthenticated) UserStatus userStatus,
    @Default(null) User? currentUser,
    @Default(null) AppMex? appMex,
  }) = _AuthState;

  static AuthState init() => const AuthState(
    status: AuthStatus.init,
    userStatus: UserStatus.unauthenticated,
    currentUser: null,
    appMex: null,
  );
}
