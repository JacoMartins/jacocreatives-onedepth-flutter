import 'package:flutter/material.dart';
import 'package:jacocreatives_onedepth/screens/home_screen.dart';
import 'package:jacocreatives_onedepth/theme/app_theme.dart';

class OneDepthApp extends StatelessWidget {
  const OneDepthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OneDepth',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      home: const HomeScreen(),
    );
  }
}
