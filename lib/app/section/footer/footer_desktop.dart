import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/app/section/footer/widgets/footer_text_button.dart';
import 'package:portfolio/core/extension/color_extension.dart';
import 'package:portfolio/core/extension/textstyle_extension.dart';

import '../../../core/constants/app_consts.dart';

class FooterDesktop extends StatelessWidget {
  const FooterDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    // Determine the text color for the footer content
    final linkColor = context.brandColors.onPrimaryContainerDim;

    return Container(
      // Use padding instead of fixed height
      padding: EdgeInsets.symmetric(
        horizontal: AppConsts.pWebSideHorz, // Your horizontal padding
        vertical: 32.0, // Generous vertical padding for visual separation
      ),
      // Optional: Add a subtle border/color for visual separation from the main content
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
              color: Color(0xFFE0E0E0).withValues(alpha: 0.4), width: 1.0),
        ),
        // Consider a slight background color like Colors.grey[50] for better contrast
        // color: Colors.grey[50],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distributes space
        crossAxisAlignment:
            CrossAxisAlignment.start, // Align content to the top
        children: [
          // --- Left Section: Branding and Copyright ---
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // **App Name/Logo Spot**
              // Replace this with your actual Logo widget or a stylized Text
              Text(
                "HabitFlow", // Your App Name
                style: context.headlineSmall.copyWith(
                  color: context.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              // **Copyright**
              Text(
                "© ${DateTime.now().year} HabitFlow. All rights reserved.",
                style: context.bodySmall.copyWith(
                  color: linkColor,
                ),
              ),
            ],
          ),

          // --- Right Section: Links and Legal ---
          Row(
            // Use SizedBox for spacing between the link buttons
            children: [
              FooterTextButton(
                title: "Privacy Policy",
                onTap: () {
                  context.pushNamed('privacy-policy-page');
                },
              ),
              const SizedBox(width: 40),
              FooterTextButton(
                title: "Terms of Use",
                onTap: () {
                  context.pushNamed('terms-page');
                },
              ),
              const SizedBox(width: 40),
              FooterTextButton(
                title: "Contact",
                onTap: () {},
              ),

              // Optional: Add an extra link or a social media icon button here
            ],
          ),
        ],
      ),
    );
  }
}

// class FooterDesktop extends StatelessWidget {
//   const FooterDesktop({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 100,
//       width: double.infinity,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(
//           horizontal: AppConsts.pWebSideHorz,
//         ),
//         child: Row(
//           spacing: 40,
//           children: [
//             FooterTextButton(
//               title: "Privacy Policy",
//               onTap: () {},
//             ),
//             FooterTextButton(
//               title: "Terms & Conditions",
//               onTap: () {},
//             ),
//             FooterTextButton(
//               title: "Contact",
//               onTap: () {},
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
