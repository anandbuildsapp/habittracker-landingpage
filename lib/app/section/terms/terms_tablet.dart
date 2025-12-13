import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/strings.dart';

import '../../../core/constants/app_consts.dart';

class TermsTablet extends StatelessWidget {
  const TermsTablet({super.key});

  @override
  Widget build(BuildContext context) {
    // Tablet Font Sizes
    const double titleFontSize = 38;
    const double sectionTitleFontSize = 22;
    const double bodyFontSize = 16;
    final Color textColor =
        Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black87;

    // A helper function to build each terms section
    Widget buildTermsSection({required String title, required String body}) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: sectionTitleFontSize,
                ),
          ),
          const SizedBox(height: 15),
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
      padding: EdgeInsets.symmetric(
        vertical: AppConsts.pTabletVertical,
      ),
      child: Center(
        child: Container(
          constraints:
              const BoxConstraints(maxWidth: 800), // Slightly less constrained
          child: ListView(
            primary: true,
            padding: const EdgeInsets.symmetric(
              horizontal: AppConsts.pTabletSideHorz,
            ),
            children: [
              const SizedBox(height: 40),
              // --- Title Section ---
              Text(
                "Terms of use",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      // Using titleFontSize for the main title
                      fontSize: titleFontSize,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 10),
              Text(
                termsLastUpdated,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
              ),
              const SizedBox(height: 40),

              // --- Terms Sections ---
              buildTermsSection(title: section1Title, body: section1Body),
              buildTermsSection(title: section2Title, body: section2Body),
              buildTermsSection(title: section3Title, body: section3Body),
              buildTermsSection(title: section4Title, body: section4Body),

              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
