import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

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
      // Check internet connectivity
      // Form validation
      // Privacy policy check
      // Register user in the firebase authentication and save user data in the firebase
      // Save authenticated user in the frebase firestore
      // Show success message
      // Move to verify email screen
    } catch (e) {
      // Show some generic error to the user
    } finally {
      // Remove loader
    }
  }
}
