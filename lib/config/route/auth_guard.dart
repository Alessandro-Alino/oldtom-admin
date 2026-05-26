import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:oldtom_admin/config/route/app_route.gr.dart';

class AuthGuard extends AutoRouteGuard {

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    try {
      final user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        resolver.next(true);
      } else {
        resolver.redirectUntil(const LoginRoute(), replace: true);
      }
    } catch (e) {
      log('[AUTH_GUARD_ERROR] $e');
      resolver.next(false);
    }
  }
}
