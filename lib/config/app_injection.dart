import 'package:flutter/material.dart';
import 'package:oldtom_admin/feature/categ/bloc/categ_bloc.dart';
import 'package:oldtom_admin/feature/categ/repo/categ_repo.dart';
import 'theme/repo/app_theme_repo.dart';
import 'theme/cubit/app_theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oldtom_admin/feature/auth/bloc/auth_bloc.dart';
import 'package:oldtom_admin/feature/auth/repo/auth_repo.dart';
import 'package:oldtom_admin/feature/git_image/bloc/git_image_bloc.dart';
import 'package:oldtom_admin/feature/git_image/repo/git_image_repo.dart';

class AppInjection extends StatelessWidget {
  const AppInjection({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        // App Shared-Pref Repo
        RepositoryProvider<AppThemeRepo>(create: (context) => AppThemeRepo()),
        // Auth Repo
        RepositoryProvider<AuthRepo>(create: (context) => AuthRepo()),
        // Categ Repo
        RepositoryProvider<CategRepo>(create: (context) => CategRepo()),
        // Git Image Repo
        RepositoryProvider<GitImageRepo>(create: (context) => GitImageRepo()),
      ],
      child: MultiBlocProvider(
        providers: [
          // Theme Cubit
          BlocProvider<AppThemeCubit>(
            create: (context) =>
                AppThemeCubit(appThemeRepo: context.read<AppThemeRepo>())
                  ..getTheme(context),
          ),
          // Auth Bloc
          BlocProvider<AuthBloc>(
            create: (context) => AuthBloc(authRepo: context.read<AuthRepo>()),
          ),
          // Firestore Bloc
          BlocProvider<CategBloc>(
            create: (context) =>
                CategBloc(firestoreRepo: context.read<CategRepo>()),
          ),
          // Git Image Bloc
          BlocProvider<GitImageBloc>(
            create: (context) =>
                GitImageBloc(gitImageRepo: context.read<GitImageRepo>()),
          ),
        ],
        child: child,
      ),
    );
  }
}
