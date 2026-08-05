import 'package:flutter/material.dart';
import 'package:jacocreatives_onedepth/theme/app_colors.dart';

enum AppTextStyle { title, subtitle, body, caption }

class AppText extends StatelessWidget {
  final String text;
  final AppTextStyle style;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const AppText(
    this.text, {
    super.key,
    this.style = AppTextStyle.body,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    final base = _resolveStyle(context);
    return Text(
      text,
      style: base.copyWith(color: color ?? base.color),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  TextStyle _resolveStyle(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    switch (style) {
      case AppTextStyle.title:
        return textTheme.headlineSmall!.copyWith(
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary,
          letterSpacing: -0.5,
        );
      case AppTextStyle.subtitle:
        return textTheme.titleMedium!.copyWith(
          fontWeight: FontWeight.w400,
          color: AppColors.textPrimary,
          letterSpacing: -0.5,
        );
      case AppTextStyle.body:
        return textTheme.bodyMedium!.copyWith(
          letterSpacing: -0.5,
          color: AppColors.textPrimary
        );
      case AppTextStyle.caption:
        return textTheme.bodySmall!.copyWith(
          letterSpacing: -0.5,
          color: AppColors.textSecondary
        );
    }
  }
}
