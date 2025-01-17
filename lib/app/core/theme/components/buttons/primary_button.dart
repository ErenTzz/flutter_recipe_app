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
    this.color,
    this.padding,
    this.width,
    this.height,
  });

  final VoidCallback? onTap;
  final Widget? icon;
  final String? text;
  final EdgeInsets? margin;
  final Color? color;
  final EdgeInsets? padding;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 60, vertical: 18),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? AppThemeColor.primary,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Center(
          child: Text(
            text ?? "",
            style: context.p2.copyWith(
              color: AppThemeColor.white,
            ),
          ),
        ),
      ),
    );
  }
}
