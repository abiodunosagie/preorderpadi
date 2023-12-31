import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:preorderpadi/features/authentication/screens/login/login.dart';
import 'package:preorderpadi/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:preorderpadi/utils/constants/image_strings.dart';
import 'package:preorderpadi/utils/constants/sizes.dart';
import 'package:preorderpadi/utils/constants/text_strings.dart';

import '../../../../utils/helpers/helper_function.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              CupertinoIcons.clear,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(
          TSizes.defaultSpace,
        ),
        child: Column(
          children: [
            /// Image with 60% of screen width
            Image(
              image: AssetImage(
                TImages.deliveredEmailIllustration,
              ),
              width: THelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            /// title & SubTitle
            Text(
              TTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Text(
              TTexts.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            /// Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const LoginScreen()),
                child: const Text(
                  TTexts.done,
                ),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () => Get.to(() => const ForgotPassword()),
                child: const Text(
                  TTexts.resendEmail,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
