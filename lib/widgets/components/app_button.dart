import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:jacocreatives_onedepth/theme/app_colors.dart';
import 'package:jacocreatives_onedepth/theme/gradient_transforms.dart';
import 'package:jacocreatives_onedepth/widgets/components/app_text.dart';

class AppButton extends StatefulWidget {
  final IconData? icon;
  final String? title;
  final double iconSize;
  final VoidCallback? onTap;

  const AppButton({
    super.key,
    this.title,
    this.icon,
    this.iconSize = 32,
    this.onTap,
  });

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => isPressed = true),
      onTapUp: (_) => setState(() => isPressed = false),
      onTapCancel: () => setState(() => isPressed = false),
      onTap: widget.onTap,
      child: AnimatedScale(
        scale: isPressed ? 0.98 : 1.0,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeOut,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(1),
              foregroundDecoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(24),
                border: Border(
                  left: BorderSide(
                    color: isPressed
                        ? Colors.black.withValues(alpha: 0.8)
                        : Colors.black.withValues(alpha: 0.4),
                    width: isPressed ? 1.0 : 0.5,
                  ),
                  right: BorderSide(
                    color: isPressed
                        ? Colors.black.withValues(alpha: 0.8)
                        : Colors.black.withValues(alpha: 0.4),
                    width: isPressed ? 1.0 : 0.5,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(24),
                backgroundBlendMode: BlendMode.hardLight,
                gradient: SweepGradient(
                  startAngle: 0.0,
                  endAngle: math.pi * 2,
                  transform: OvalGradientTransform(
                    aspectMultiplier: 1.0,
                    rotationRadians: 175 * (math.pi / 180),
                  ),
                  stops: const [
                    0.04,
                    0.10,
                    0.15,
                    0.21,
                    0.37,
                    0.44,
                    0.49,
                    0.53,
                    0.60,
                    0.69,
                    0.78,
                    0.91,
                    0.96,
                  ],
                  colors: [
                    const Color(0xFF878787).withValues(alpha: 0.3),
                    const Color(0xFF999999).withValues(alpha: 0.3),
                    const Color(0xFFBFBFBF).withValues(alpha: 0.3),
                    const Color(0xFFFFFFFF).withValues(alpha: 0.3),
                    const Color(0xFFFFFFFF).withValues(alpha: 0.3),
                    const Color(0xFFBFBFBF).withValues(alpha: 0.3),
                    const Color(0xFF999999).withValues(alpha: 0.3),
                    const Color(0xFF808080).withValues(alpha: 0.3),
                    const Color(0xFF808080).withValues(alpha: 0.3),
                    const Color(0xFFBFBFBF).withValues(alpha: 0.3),
                    const Color(0xFFBFBFBF).withValues(alpha: 0.3),
                    const Color(0xFFBFBFBF).withValues(alpha: 0.3),
                    const Color(0xFF999999).withValues(alpha: 0.3),
                  ],
                ),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 10,
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(24),
                  color: isPressed ? AppColors.mist700 : AppColors.mist800,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (widget.icon != null)
                      Icon(
                        widget.icon,
                        color: AppColors.textPrimary,
                        size: widget.iconSize,
                      ),
                    if (widget.title != null)
                      AppText(
                        widget.title!,
                        style: AppTextStyle.body,
                        textAlign: TextAlign.center,
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
