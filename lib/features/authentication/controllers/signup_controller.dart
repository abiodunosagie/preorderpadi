import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:preorderpadi/utils/constants/image_strings.dart';
import 'package:preorderpadi/utils/loaders/full_screen_loader.dart';
import 'package:preorderpadi/utils/loaders/loaders.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Variables
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
      // final isConnected = await NetworkManager.instance.isConnected();
      // Form validation
      // Privacy policy check
      // Register user in the firebase authentication and save user data in the firebase
      // Save authenticated user in the firebase firestore
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
