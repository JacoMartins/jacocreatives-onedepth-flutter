import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jacocreatives_onedepth/theme/app_colors.dart';
import 'package:jacocreatives_onedepth/widgets/components/header_button.dart';
import 'package:phosphoricons_flutter/phosphoricons_flutter.dart';

class AppHeader extends StatelessWidget {
  final String title;

  const AppHeader({super.key, this.title = 'Page'});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
      // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: 26,
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.5,
                  ),
                ),
              ],
            ),
          ),
          HeaderButton(icon: PhosphorIconsBold.dotsThree, onTap: () {}),
        ],
      ),
    );
  }
}
