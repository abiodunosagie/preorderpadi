import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:preorderpadi/features/authentication/screens/onboarding/widgets.onboarding/OnBoarding_Next_Button.dart';
import 'package:preorderpadi/features/authentication/screens/onboarding/widgets.onboarding/onboarding_dot_navigation.dart';
import 'package:preorderpadi/features/authentication/screens/onboarding/widgets.onboarding/onboarding_page.dart';
import 'package:preorderpadi/features/authentication/screens/onboarding/widgets.onboarding/onboarding_skip.dart';
import 'package:preorderpadi/utils/constants/text_strings.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../controllers/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          ///  Dot Navigation SmoothPageIndicator
          const OnboardingDotNavigation(),

          ///  Circular Button
          const OnboardingNextButton(),
        ],
      ),
    );
  }
}
