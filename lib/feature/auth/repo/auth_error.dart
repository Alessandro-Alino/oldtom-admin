import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';

class AuthError {
  static String handleError(Object? error) {
    log('[HANDLE_ERROR] $error');

    // Firebase Auth Exception
    if (error is FirebaseAuthException) {
      switch (error.code) {
        case 'email-already-in-use':
          return 'Email Already In Use.';
        case 'invalid-credential':
          return 'Invalid Credential.';
        default:
          return 'Error: ${error.message}.';
      }
    }
    // Generic Exception
    else {
      return 'Error: Generic.';
    }
  }
}
