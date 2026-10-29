import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';
import 'package:unischedule/core/utils/app_text_styles.dart';

class LightTheme {
  const LightTheme._();

  static final TextTheme _textTheme = TextTheme(
    displayLarge: AppTextStyles.bold30White.copyWith(
      color: AppColors.primary,
    ),
    displayMedium: AppTextStyles.bold30White.copyWith(
      color: AppColors.secondary,
    ),
    displaySmall: AppTextStyles.bold24Primary,
    headlineLarge: AppTextStyles.bold24Primary,
    headlineMedium: AppTextStyles.semiBold20Primary,
    headlineSmall: AppTextStyles.semiBold16Primary,
    titleLarge: AppTextStyles.semiBold20Primary,
    titleMedium: AppTextStyles.bold13Primary,
    titleSmall: AppTextStyles.semiBold14White.copyWith(
      color: AppColors.secondary,
    ),
    bodyLarge: AppTextStyles.regular16White.copyWith(
      color: AppColors.lightBlack,
    ),
    bodyMedium: AppTextStyles.regular14Black,
    bodySmall: AppTextStyles.regular12BlackLight,
    labelLarge: AppTextStyles.regular14Black,
    labelMedium: AppTextStyles.regular10textGreen,
    labelSmall: AppTextStyles.bold11White.copyWith(
      color: AppColors.lightBlack,
    ),
  );

  static final ThemeData themeData = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.light,
    ).copyWith(
      primary: AppColors.primary,
      onPrimary: AppColors.white,
      secondary: AppColors.green,
      onSecondary: AppColors.white,
      surface: AppColors.scaffoldBackgroundColor,
      onSurface: AppColors.secondary,
      error: AppColors.red,
      onError: AppColors.white,
    ),
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.appBarColor,
      foregroundColor: AppColors.secondary,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
    ),
    textTheme: _textTheme,
  );
}
