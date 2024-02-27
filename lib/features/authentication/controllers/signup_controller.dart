import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:preorderpadi/data/repositories/authentication/authentication_repository.dart';
import 'package:preorderpadi/utils/constants/image_strings.dart';
import 'package:preorderpadi/utils/loaders/full_screen_loader.dart';
import 'package:preorderpadi/utils/loaders/loaders.dart';

import '../../../utils/http/network_manager.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Variables
  final hidePassword = true.obs; // Observable for hiding/showing password
  final privacyPolicy = true.obs; // Observable for privacy policy password
  final email = TextEditingController(); // Controller for email input
  final firstName = TextEditingController(); // Controller for firstname input
  final lastName = TextEditingController(); // Controller for lastname input
  final username = TextEditingController(); // Controller for username input
  final password = TextEditingController(); // Controller for password input
  final phoneNumber =
      TextEditingController(); // Controller for phone-number input
  GlobalKey<FormState> signupFormKey =
      GlobalKey<FormState>(); // Form key for form validation
  /// -- Sign up
  Future<void> signup() async {
    try {
      // Start loading
      TFullScreenLoader.openLoadingDialog(
          'We are processing your information', TImages.docerAnimation);
      // Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      // Form validation
      if (!signupFormKey.currentState!.validate()) return;

      // Privacy policy check
      if (!privacyPolicy.value) {
        TLoaders.warningSnackBar(
            title: 'Accept Privacy Policy',
            message:
                'In order to create an account, you have to read and accept our privacy policy &  terms of use.');
      }
      // Register user in the firebase authentication and save user data in the firebase
      await AuthenticationRepository.instance.registerWithEmailAndPassword(
          email.text.trim(), password.text.trim());
      // Save authenticated user in the firebase fire-store

      // Show success message
      // Move to verify email screen
    } catch (e) {
      // Show some generic error to the user
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      // Remove loader
      TFullScreenLoader.stopLoading();
    }
  }
}
