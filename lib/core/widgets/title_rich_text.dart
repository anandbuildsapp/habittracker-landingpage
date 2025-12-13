import 'package:flutter/material.dart';
import 'package:portfolio/core/extension/textstyle_extension.dart';

class TitleRichText extends StatelessWidget {
  const TitleRichText({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: context.headlineLarge.copyWith(
        color: Colors.white,
      ),
    );
  }
}
