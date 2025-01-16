import 'package:flutter/material.dart';
import 'package:recipe_app/app/core/theme/app_text_theme.dart';
import 'package:recipe_app/app/core/theme/app_theme_color.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.onTap,
    this.icon,
    this.text,
    this.margin,
  });

  final VoidCallback? onTap;
  final Widget? icon;
  final String? text;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 19,
        ),
        decoration: BoxDecoration(
          color: AppThemeColor.primary,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Text(
          text ?? "",
          style: context.p2.copyWith(
            color: AppThemeColor.white,
          ),
        ),
      ),
    );
  }
}
