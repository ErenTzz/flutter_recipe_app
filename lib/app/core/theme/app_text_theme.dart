import 'package:flutter/material.dart';
import 'package:recipe_app/app/core/theme/app_theme_color.dart';

extension TextThemeExtension on BuildContext {
  TextTheme get _textTheme => Theme.of(this).textTheme;

  TextStyle get h1 => _textTheme.headlineLarge!.copyWith(
        color: AppThemeColor.mainText,
        fontWeight: FontWeight.w700,
        fontSize: 22,
      );

  TextStyle get h2 => _textTheme.headlineMedium!.copyWith(
        color: AppThemeColor.mainText,
        fontWeight: FontWeight.w700,
        fontSize: 17,
      );

  TextStyle get h3 => _textTheme.headlineSmall!.copyWith(
        color: AppThemeColor.mainText,
        fontWeight: FontWeight.w700,
        fontSize: 15,
      );

  TextStyle get p1 => _textTheme.bodyLarge!.copyWith(
        color: AppThemeColor.mainText,
        fontWeight: FontWeight.w500,
        fontSize: 17,
      );

  TextStyle get p2 => _textTheme.bodyMedium!.copyWith(
        color: AppThemeColor.mainText,
        fontWeight: FontWeight.w500,
        fontSize: 15,
      );

  TextStyle get s => _textTheme.bodySmall!.copyWith(
        color: AppThemeColor.mainText,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );
}
