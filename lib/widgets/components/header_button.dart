import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:jacocreatives_onedepth/theme/app_colors.dart';

class HeaderButton extends StatefulWidget {
  final IconData? icon;
  final String? content;
  final double iconSize;
  final VoidCallback? onTap;

  const HeaderButton({
    super.key,
    this.content,
    this.icon,
    this.iconSize = 32,
    this.onTap,
  });

  @override
  State<HeaderButton> createState() => _HeaderButtonState();
}

class _HeaderButtonState extends State<HeaderButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => isPressed = true),
      onTapUp: (_) => setState(() => isPressed = false),
      onTapCancel: () => setState(() => isPressed = false),
      onTap: widget.onTap,
      child: AnimatedScale(
        scale: isPressed ? 0.92 : 1.0,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeOut,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              // width: size,
              // height: size,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.neutral900,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.4),
                      blurRadius: 20,
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              foregroundDecoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(999),
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
                borderRadius: BorderRadius.circular(999),
                backgroundBlendMode: BlendMode.hardLight,
                gradient: SweepGradient(
                  startAngle: 0.0,
                  endAngle: math.pi * 2,
                  transform: GradientRotation(165 * (math.pi / 180)),
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
                    const Color(0xFF999999).withValues(alpha: 0.3),
                    const Color(0xFFBFBFBF).withValues(alpha: 0.3),
                    const Color(0xFF878787).withValues(alpha: 0.3),
                  ],
                ),
              ),
              child: Stack(
                children: [
                  // Base circle
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isPressed
                          ? Color.fromARGB(255, 24, 28, 28)
                          : Color.fromARGB(255, 14, 18, 18),
                    ),
                    child: Icon(
                      widget.icon,
                      color: AppColors.textPrimary,
                      size: widget.iconSize,
                    ),
                  ),
                  Positioned.fill(
                    child: ClipOval(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            center: const Alignment(0, -0.7),
                            radius: 0.9,
                            colors: [
                              Colors.transparent,
                              Colors.white.withValues(alpha: 0.1),
                            ],
                            stops: const [0.75, 1.0],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: ClipOval(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            center: const Alignment(0, 0.65),
                            radius: 0.9,
                            colors: [
                              Colors.transparent,
                              Colors.white.withValues(alpha: 0.3),
                            ],
                            stops: const [0.75, 1.0],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
