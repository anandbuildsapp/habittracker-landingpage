import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/strings.dart';

import '../../../core/constants/app_consts.dart';

class PrivacyPolicyMobile extends StatelessWidget {
  const PrivacyPolicyMobile({super.key});

  @override
  Widget build(BuildContext context) {
    // Mobile Font Sizes
    const double titleFontSize = 32;
    const double sectionTitleFontSize = 20;
    const double bodyFontSize = 14;
    final Color textColor =
        Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black87;

    Widget buildPrivacySection({required String title, required String body}) {
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
        primary: true,
        padding: const EdgeInsets.symmetric(
             horizontal: AppConsts.pMobileSideHorz,
        ),
        children: [
          const SizedBox(height: 30),
          // --- Title Section ---
          Text(
            privacyTitle,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            privacyLastUpdated,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey,
                  fontSize: 12,
                ),
          ),
          const SizedBox(height: 30),

          // --- Policy Sections ---
          buildPrivacySection(title: ppSection1Title, body: ppSection1Body),
          buildPrivacySection(title: ppSection2Title, body: ppSection2Body),
          buildPrivacySection(title: ppSection3Title, body: ppSection3Body),
          buildPrivacySection(title: ppSection4Title, body: ppSection4Body),
          buildPrivacySection(title: ppSection5Title, body: ppSection5Body),

          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
