import 'package:flutter/material.dart';
import 'package:portfolio/core/extension/color_extension.dart';
import 'package:portfolio/core/extension/textstyle_extension.dart';

class FooterTextButton extends StatelessWidget {
  const FooterTextButton({super.key, required this.title, this.onTap});

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: context.bodyMedium.copyWith(
          color: context.brandColors.onPrimaryContainerDim,
        ),
      ),
    );
  }
}
