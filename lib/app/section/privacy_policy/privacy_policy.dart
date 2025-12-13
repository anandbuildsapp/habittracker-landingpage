import 'package:flutter/material.dart';
import 'package:portfolio/app/section/privacy_policy/privacy_policy_desktop.dart';
import 'package:portfolio/app/section/privacy_policy/privacy_policy_mobile.dart';
import 'package:portfolio/app/section/privacy_policy/privacy_policy_tablet.dart';
import 'package:portfolio/core/responsive/responsive.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Responsive(
        mobile: PrivacyPolicyMobile(),
        tablet: PrivacyPolicyTablet(),
        desktop: PrivacyPolicyDesktop(),
      ),
    );
  }
}
