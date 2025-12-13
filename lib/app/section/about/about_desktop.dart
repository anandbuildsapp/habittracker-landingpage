import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/app_consts.dart';
import 'package:portfolio/core/extension/color_extension.dart';
import 'package:portfolio/core/extension/textstyle_extension.dart';
import 'package:portfolio/core/utils/functions.dart';
import 'package:portfolio/core/utils/strings.dart';

import '../../../core/widgets/title_rich_text.dart';


class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppConsts.pWebVeritical,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 50),
          // TitleRichText(
          //   titleOne: aboutEn,
          //   titleTwo: me,
          // ),
          const SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppConsts.pWebSideHorz,
            ),
            child: Text(
              aboutMeBody,
              style: context.titleSmall.copyWith(
                fontSize: desktopFontSize(
                  context: context,
                  maxFontSize: 20,
                  minFontSize: 16,
                ),
                color: context.brandColors.onPrimaryContainerDim,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        
        ],
      ),
    );
  }
}
