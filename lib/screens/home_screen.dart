import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:jacocreatives_onedepth/theme/app_colors.dart';
import 'package:jacocreatives_onedepth/theme/gradient_transforms.dart';
import 'package:jacocreatives_onedepth/widgets/components/app_text.dart';
import 'package:jacocreatives_onedepth/widgets/app_header.dart';
import 'package:jacocreatives_onedepth/widgets/components/app_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int _navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      // header: ,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 90),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              AppHeader(title: 'Home'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Stack(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned.fill(
                          // width: size,
                          // height: size,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(24),
                              color: AppColors.mist900,
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
                            borderRadius: BorderRadius.circular(24),
                            border: Border(
                              left: BorderSide(
                                color: Colors.black.withValues(alpha: 0.4),
                                width: 0.5,
                              ),
                              right: BorderSide(
                                color: Colors.black.withValues(alpha: 0.4),
                                width: 0.5,
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
                                rotationRadians: 168 * math.pi / 180,
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
                              ],
                              colors: [
                                const Color(0xFF878787).withValues(alpha: 0.2),
                                const Color(0xFF999999).withValues(alpha: 0.2),
                                const Color(0xFFBFBFBF).withValues(alpha: 0.2),
                                const Color(0xFFFFFFFF).withValues(alpha: 0.2),
                                const Color(0xFFFFFFFF).withValues(alpha: 0.2),
                                const Color(0xFFBFBFBF).withValues(alpha: 0.2),
                                const Color(0xFF999999).withValues(alpha: 0.2),
                                const Color(0xFF808080).withValues(alpha: 0.2),
                                const Color(0xFF808080).withValues(alpha: 0.2),
                                const Color(0xFF999999).withValues(alpha: 0.2),
                                const Color(0xFFBFBFBF).withValues(alpha: 0.2),
                                const Color(0xFF878787).withValues(alpha: 0.2),
                              ],
                            ),
                          ),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.mist900,
                              borderRadius: BorderRadius.all(
                                Radius.circular(24),
                              ),
                            ),
                            child: Column(
                              spacing: 20,
                              children: [
                                Column(
                                  spacing: 12,
                                  children: [
                                    AppText(
                                      'Welcome to OneDepth’s icon pack App!',
                                      style: AppTextStyle.title,
                                    ),
                                    AppText(
                                      'We detected [Launcher or UI Manager] on your phone, click below to see applying instructions.',
                                      style: AppTextStyle.body,
                                    ),
                                  ],
                                ),
                                AppButton(title: 'Apply'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: _FloatingNavBar(
      //   selectedIndex: _navIndex,
      //   onSelect: (i) => setState(() => _navIndex = i),
      // ),
    );
  }
}
