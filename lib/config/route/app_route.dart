import 'package:auto_route/auto_route.dart';
import 'package:oldtom_admin/config/route/auth_guard.dart';
import 'app_route.gr.dart';
import 'app_route_const.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  final AuthGuard authGuard;

  AppRouter({required this.authGuard});

  @override
  RouteType get defaultRouteType => RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    // Login Page
    AutoRoute(
      initial: true,
      path: AppRouteConst.loginPage,
      page: LoginRoute.page,
    ),
    // Home Page
    AutoRoute(
      path: AppRouteConst.homePage,
      page: HomeRoute.page,
      guards: [authGuard],
    ),
    // User Page
    AutoRoute(
      path: AppRouteConst.userPage,
      page: UserRoute.page,
      guards: [authGuard],
    ),
    // Categ Page
    AutoRoute(
      path: AppRouteConst.categPage,
      page: CategRoute.page,
      guards: [authGuard],
    ),
    // Prod Page
    AutoRoute(
      path: AppRouteConst.prodPage,
      page: ProdRoute.page,
      guards: [authGuard],
    ),
    // Image Page
    AutoRoute(
      path: AppRouteConst.imagePage,
      page: GitImageRoute.page,
      guards: [authGuard],
    ),
  ];

  @override
  List<AutoRouteGuard> get guards => [];
}
