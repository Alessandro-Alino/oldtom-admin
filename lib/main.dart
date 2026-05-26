import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oldtom_admin/config/firebase/firebase_options.dart';
import 'package:oldtom_admin/config/route/auth_guard.dart';
import 'package:oldtom_admin/feature/auth/repo/auth_repo.dart';
import 'config/app_injection.dart';
import 'config/helpers/extensions.dart';
import 'config/l10n/generated/app_localizations.dart';
import 'config/route/app_route.dart';
import 'config/shared_prefs/app_shared_prefs.dart';
import 'config/theme/app_theme.dart';
import 'config/theme/cubit/app_theme_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppSharedPrefs().init();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // App Router
    final appRouter = AppRouter(authGuard: AuthGuard());

    return AppInjection(
      child: BlocBuilder<AppThemeCubit, ThemeMode>(
        builder: (context, state) {
          return MaterialApp.router(
            themeMode: state,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            debugShowCheckedModeBanner: false,
            scrollBehavior: const MaterialScrollBehavior().copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
                PointerDeviceKind.trackpad,
                PointerDeviceKind.stylus,
              },
            ),
            routerConfig: appRouter.config(
              reevaluateListenable: ReevaluateListenable.stream(
                AuthRepo().authStateChanges,
              ),
            ),
            onGenerateTitle: (context) => context.ltr.title_app,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
          );
        },
      ),
    );
  }
}
