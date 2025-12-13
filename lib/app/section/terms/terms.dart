import 'package:flutter/material.dart';
import 'package:portfolio/app/section/terms/terms_desktop.dart';
import 'package:portfolio/app/section/terms/terms_mobile.dart';
import 'package:portfolio/app/section/terms/terms_tablet.dart';

import '../../../core/responsive/responsive.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Responsive(
        mobile: TermsMobile(),
        tablet: TermsTablet(),
        desktop: TermsDesktop(),
      ),
    );
  }
}
