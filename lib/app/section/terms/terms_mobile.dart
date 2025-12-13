import 'package:flutter/material.dart';

import '../../../core/constants/app_consts.dart';
import '../../../core/utils/strings.dart';

class TermsMobile extends StatelessWidget {
  const TermsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    // Mobile Font Sizes
    const double titleFontSize = 32;
    const double sectionTitleFontSize = 20;
    const double bodyFontSize = 14;
    final Color textColor =
        Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black87;

    // A helper function to build each terms section
    Widget buildTermsSection({required String title, required String body}) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: sectionTitleFontSize,
                ),
          ),
          const SizedBox(height: 10),
          Text(
            body,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: bodyFontSize,
                  color: textColor,
                ),
            textAlign: TextAlign.justify,
          ),
        ],
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppConsts.pMobileSideHorz,
      ),
      child: ListView(
        // Use PrimaryScrollController for mobile scrolling
        primary: true,
        padding: const EdgeInsets.symmetric(
          horizontal: AppConsts.pMobileSideHorz,
        ),
        children: [
          const SizedBox(height: 30),
          // --- Title Section ---
          Text(
            "Terms of use",
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  // Using titleFontSize for the main title
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            termsLastUpdated,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey,
                  fontSize: 12,
                ),
          ),
          const SizedBox(height: 30),

          // --- Terms Sections ---
          buildTermsSection(title: section1Title, body: section1Body),
          buildTermsSection(title: section2Title, body: section2Body),
          buildTermsSection(title: section3Title, body: section3Body),
          buildTermsSection(title: section4Title, body: section4Body),

          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
