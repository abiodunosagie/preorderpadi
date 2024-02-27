import 'package:flutter/material.dart';
import 'package:preorderpadi/features/authentication/screens/signup/widgets/tsignup_form.dart';
import 'package:preorderpadi/utils/constants/sizes.dart';
import 'package:preorderpadi/utils/constants/text_strings.dart';
import 'package:preorderpadi/utils/helpers/helper_function.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            TSizes.defaultSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Form
              const TSignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}
