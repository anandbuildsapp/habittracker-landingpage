import 'package:flutter/material.dart';

import '../../../core/constants/app_consts.dart';
import '../../../core/utils/strings.dart';

class PrivacyPolicyDesktop extends StatelessWidget {
  const PrivacyPolicyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    // Desktop Font Sizes
    const double titleFontSize = 48;
    const double sectionTitleFontSize = 24;
    const double bodyFontSize = 18;
    final Color textColor =
        Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black87;

    Widget buildPrivacySection({required String title, required String body}) {
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
      padding: const EdgeInsets.symmetric(
        vertical: AppConsts.pWebVeritical,
      ),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: ListView(
            primary: true,
            padding: const EdgeInsets.symmetric(
              horizontal: AppConsts.pWebSideHorz,
            ),
            children: [
              const SizedBox(height: 50),
              // --- Title Section ---
              Text(
                privacyTitle,
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: titleFontSize,
                      fontWeight: FontWeight.bold,
                      // Assuming a dark theme context based on your reference
                      // For simplicity, using primary color, adjust as needed
                      color: Theme.of(context).primaryColor,
                    ),
              ),
              const SizedBox(height: 10),
              Text(
                privacyLastUpdated,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
              ),
              const SizedBox(height: 50),

              // --- Policy Sections ---
              buildPrivacySection(title: ppSection1Title, body: ppSection1Body),
              buildPrivacySection(title: ppSection2Title, body: ppSection2Body),
              buildPrivacySection(title: ppSection3Title, body: ppSection3Body),
              buildPrivacySection(title: ppSection4Title, body: ppSection4Body),
              buildPrivacySection(title: ppSection5Title, body: ppSection5Body),

              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
