import 'package:flutter/material.dart';
import 'package:portfolio/app/section/home/home.dart';
import 'package:portfolio/core/constants/assets.dart';

import '../section/footer/footer_desktop.dart';

List<Widget> body = [
  HomePage(),
  FooterDesktop(),
];

// Skills
List<String> techStack = [
  // Frameworks & SDKs
  Assets.flutter,
  Assets.firebase,
  Assets.supabase,

  // Languages
  Assets.dart,
  Assets.html,
  Assets.css,
  Assets.javascript,
  Assets.graphql,

  // Backend / Tools
  Assets.nodejs,
  Assets.postman,

  // IDEs & Design Tools
  Assets.vscode,
  Assets.andoridStudio,
  Assets.figma,

  // Version Control
  Assets.git,
];
