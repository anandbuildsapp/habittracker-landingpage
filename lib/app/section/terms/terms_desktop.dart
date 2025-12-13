import 'package:flutter/material.dart';
import 'package:portfolio/core/extension/textstyle_extension.dart';

import '../../../core/constants/app_consts.dart';
import '../../../core/utils/strings.dart';
import '../../../core/widgets/title_rich_text.dart';

class TermsDesktop extends StatelessWidget {
  const TermsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    // Assuming context.titleSmall is roughly 24 and titleMedium is 30, and bodyLarge is 18
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
                  fontSize: 24, // Simulated titleSmall/medium size
                ),
          ),
          const SizedBox(height: 15),
          Text(
            body,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 18, // Simulated desktopFontSize size
                  color: textColor,
                ),
            textAlign: TextAlign.justify,
          ),
        ],
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppConsts.pWebVeritical,
      ),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: ListView(
            // Use PrimaryScrollController for desktop scrolling
            primary: true,
            padding: const EdgeInsets.symmetric(
              horizontal: AppConsts.pWebSideHorz,
            ),
            children: [
              const SizedBox(height: 50),
              Text(
                "Terms of use",
                style: context.headlineLarge.copyWith(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                termsLastUpdated,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
              ),
              const SizedBox(height: 50),

              // --- Terms Sections ---
              buildTermsSection(
                title: section1Title,
                body: section1Body,
              ),
              const SizedBox(height: 10), // Small spacer between sections
              buildTermsSection(
                title: section2Title,
                body: section2Body,
              ),
              const SizedBox(height: 10),
              buildTermsSection(
                title: section3Title,
                body: section3Body,
              ),
              const SizedBox(height: 10),
              buildTermsSection(
                title: section4Title,
                body: section4Body,
              ),

              const SizedBox(height: 100), // Padding at the bottom
            ],
          ),
        ),
      ),
    );
  }
}
