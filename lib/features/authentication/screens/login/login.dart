import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:preorderpadi/common/styles/spacing_styles.dart';
import 'package:preorderpadi/common/widgets/login_signup/form_divider.dart';
import 'package:preorderpadi/common/widgets/login_signup/social_buttons.dart';
import 'package:preorderpadi/features/authentication/screens/login/widgets/tlogin_form.dart';
import 'package:preorderpadi/features/authentication/screens/login/widgets/tlogin_header.dart';
import 'package:preorderpadi/utils/constants/sizes.dart';
import 'package:preorderpadi/utils/constants/text_strings.dart';
import 'package:preorderpadi/utils/helpers/helper_function.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-Title
              TLoginHeader(dark: dark),

              /// Login Form
              const TLoginForm(),

              /// Divider
              TFormDivider(
                dividerText: TTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              /// Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
