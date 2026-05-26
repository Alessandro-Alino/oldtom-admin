import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../repo/app_theme_repo.dart';

class AppThemeCubit extends Cubit<ThemeMode> {
  AppThemeCubit({required this.appThemeRepo}) : super(ThemeMode.system);

  final AppThemeRepo appThemeRepo;

  // Set Theme
  Future<void> setTheme(ThemeMode mode) async {
    await appThemeRepo.saveTheme(mode.name);
    emit(mode);
  }

  // Get Theme
  void getTheme(BuildContext context) {
    final themeString = appThemeRepo.getTheme();

    final theme = switch (themeString) {
      'light' => ThemeMode.light,
      'dark' => ThemeMode.dark,
      _ => ThemeMode.dark,
    };

    emit(theme);
  }
}
