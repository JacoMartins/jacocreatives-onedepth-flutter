import 'package:flutter/material.dart';

class OvalGradientTransform extends GradientTransform {
  final double rotationRadians;
  final double aspectMultiplier;

  const OvalGradientTransform({
    this.rotationRadians = 0.0,
    this.aspectMultiplier = 1.0,
  });

  @override
  Matrix4? transform(Rect bounds, {TextDirection? textDirection}) {
    final center = bounds.center;
    final scaleX = (bounds.width / bounds.height) * aspectMultiplier;
    const scaleY = 1.0;

    return Matrix4.identity()
      ..translateByDouble(center.dx, center.dy, 0, 1)
      ..rotateZ(rotationRadians)
      ..scaleByDouble(scaleX, scaleY, 1.0, 1.0)
      ..translateByDouble(-center.dx, -center.dy, 0, 1);
  }
}