import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/strings.dart' show privacyTitle, privacyLastUpdated, ppSection1Title, ppSection2Body, ppSection2Title, ppSection1Body, ppSection3Title, ppSection3Body, ppSection4Title, ppSection4Body, ppSection5Title, ppSection5Body;

import '../../../core/constants/app_consts.dart';

class PrivacyPolicyTablet extends StatelessWidget {
  const PrivacyPolicyTablet({super.key});

  @override
  Widget build(BuildContext context) {
    // Tablet Font Sizes
    const double titleFontSize = 38;
    const double sectionTitleFontSize = 22;
    const double bodyFontSize = 16;
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
        vertical: AppConsts.pTabletVertical,
      ),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 800),
          child: ListView(
            primary: true,
            padding: const EdgeInsets.symmetric(
                   horizontal: AppConsts.pTabletSideHorz,
            ),
            children: [
              const SizedBox(height: 40),
              // --- Title Section ---
              Text(
                privacyTitle,
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: titleFontSize,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
              ),
              const SizedBox(height: 10),
              Text(
                privacyLastUpdated,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
              ),
              const SizedBox(height: 40),

              // --- Policy Sections ---
              buildPrivacySection(title: ppSection1Title, body: ppSection1Body),
              buildPrivacySection(title: ppSection2Title, body: ppSection2Body),
              buildPrivacySection(title: ppSection3Title, body: ppSection3Body),
              buildPrivacySection(title: ppSection4Title, body: ppSection4Body),
              buildPrivacySection(title: ppSection5Title, body: ppSection5Body),

              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
