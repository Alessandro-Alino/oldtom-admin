// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:oldtom_admin/feature/auth/screen/login_screen.dart' as _i4;
import 'package:oldtom_admin/feature/auth/screen/user_page.dart' as _i6;
import 'package:oldtom_admin/feature/categ/screen/categ_page.dart' as _i1;
import 'package:oldtom_admin/feature/git_image/screen/git_image_page.dart'
    as _i2;
import 'package:oldtom_admin/feature/prod/screen/prod_page.dart' as _i5;
import 'package:oldtom_admin/screen/app_home.dart' as _i3;

/// generated route for
/// [_i1.CategPage]
class CategRoute extends _i7.PageRouteInfo<void> {
  const CategRoute({List<_i7.PageRouteInfo>? children})
    : super(CategRoute.name, initialChildren: children);

  static const String name = 'CategRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.CategPage();
    },
  );
}

/// generated route for
/// [_i2.GitImagePage]
class GitImageRoute extends _i7.PageRouteInfo<void> {
  const GitImageRoute({List<_i7.PageRouteInfo>? children})
    : super(GitImageRoute.name, initialChildren: children);

  static const String name = 'GitImageRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.GitImagePage();
    },
  );
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute({List<_i7.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.LoginPage();
    },
  );
}

/// generated route for
/// [_i5.ProdPage]
class ProdRoute extends _i7.PageRouteInfo<void> {
  const ProdRoute({List<_i7.PageRouteInfo>? children})
    : super(ProdRoute.name, initialChildren: children);

  static const String name = 'ProdRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.ProdPage();
    },
  );
}

/// generated route for
/// [_i6.UserPage]
class UserRoute extends _i7.PageRouteInfo<void> {
  const UserRoute({List<_i7.PageRouteInfo>? children})
    : super(UserRoute.name, initialChildren: children);

  static const String name = 'UserRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.UserPage();
    },
  );
}
