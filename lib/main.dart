import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:portfolio/app/section/main/view/main_section.dart';
import 'package:portfolio/core/providers/animated_provider.dart';
import 'package:portfolio/core/providers/contact_form_provider.dart';
import 'package:portfolio/core/providers/scroll_provider.dart';
import 'package:provider/provider.dart';
import 'app/section/main/controller/main_section_provider.dart';
import 'core/theme/app_theme.dart';
import 'router/routes.dart';

void main() {
      usePathUrlStrategy();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ScrollProvider()),
        ChangeNotifierProvider(create: (context) => ContactFormProvider()),
        ChangeNotifierProvider(create: (context) => AnimateProvider()),
        ChangeNotifierProvider(create: (context) => MainSectionProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Habit Tracker - HabitBud",
      themeMode: ThemeMode.dark,
      darkTheme: buildDarkTheme(),
      debugShowCheckedModeBanner: false,
      routerConfig: router, 
      // routerDelegate: router.routerDelegate,
      // routeInformationParser: router.routeInformationParser,
      // routeInformationProvider: router.routeInformationProvider,
    );
  }
}
