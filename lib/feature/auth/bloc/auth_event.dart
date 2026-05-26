part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.init() = _InitAuthEvent;

  const factory AuthEvent.listenAuthStateChangedEvent({User? user}) = _ListenAuthStateChangedAuthEvent;

  const factory AuthEvent.signInWithEmailAndPassword({
    required String email,
    required String password,
  }) = _SignInWithEmailAndPasswordAuthEvent;

  const factory AuthEvent.signOut() = _SignOutAuthEvent;
}
