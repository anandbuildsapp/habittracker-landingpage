import 'package:flutter/material.dart';
import 'package:portfolio/app/section/home/widgets/home_button.dart';
import 'package:portfolio/core/extension/color_extension.dart';
import 'package:portfolio/core/utils/functions.dart';

import '../../../core/constants/app_consts.dart';
import '../../../core/providers/scroll_provider.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../core/utils/strings.dart';
import '../../../core/widgets/animated_gradient_text.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({super.key, required this.scrollProvider});

  final ScrollProvider scrollProvider;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConsts.pTabletSideHorz,
        vertical: AppConsts.pTabletVertical,
      ),
      child: SizedBox(
        height: height,
        width: width,
        child: Center(
          child: Column(
            spacing: AppConsts.pLarge,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
            

              HomeHeroGridientText(
                title: heroTitle,
              ),
              Text(
                heroSubtitle,
                textAlign: TextAlign.center,
                style: AppTextTheme.heroSubtitle.copyWith(
                  fontSize: tabletFontSize(context: context),
                  color: context.brandColors.onPrimaryContainerDim,
                ),
              ),
              Row(
                spacing: AppConsts.pMedium,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  HomeButton(
                    title: aboutMe,
                    onTap: () {
                      scrollProvider.jumpTo(1);
                    },
                  ),
                  HomeButton(
                    title: letsConnect,
                    onTap: () {
                      scrollProvider.jumpTo(3);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
