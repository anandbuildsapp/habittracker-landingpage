import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/app/section/privacy_policy/privacy_policy.dart';
import 'package:portfolio/app/section/terms/terms.dart';

import '../app/section/main/view/main_section.dart';

final GoRouter router = GoRouter(
  initialLocation: "/",
  observers: [HeroController()],
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: 'landing-screen',
      builder: (BuildContext context, GoRouterState state) {
        return const MainSection();
      },
    ),
    GoRoute(
      path: '/terms-of-use',
      name: 'terms-page',
      builder: (BuildContext context, GoRouterState state) {
        return const TermsPage();
      },
    ),
    GoRoute(
      path: '/privacy-policy',
      name: 'privacy-policy-page',
      builder: (BuildContext context, GoRouterState state) {
        return const PrivacyPolicyPage();
      },
    ),
  ],
);