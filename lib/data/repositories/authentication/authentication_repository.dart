import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:preorderpadi/features/authentication/screens/login/login.dart';
import 'package:preorderpadi/features/authentication/screens/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// variables
  final deviceStorage = GetStorage();
  final _auth =
      FirebaseAuth.instance; // This is going to get the instance of firebase

  /// Called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  /// Function to show relevant screen
  screenRedirect() async {
    // Local Storage
    //
    // // Debug on console to test
    // if (kDebugMode) {
    //   print('========  Get Storage =========');
    //   print(deviceStorage.read('IsFirstTime'));
    // }
    deviceStorage.writeIfNull('isFirstTime', true);
    // Check if it's the first time launching the app
    deviceStorage.read('isFirstTime') != true
        ? Get.offAll(() =>
            const LoginScreen()) // Redirect to login screen if not the first time
        : Get.offAll(() =>
            const OnBoardingScreen()); // Redirect to Onboarding screen if it's the first time.
  }

  /* ------ Email & Password sign-in ---------- */
  /// [Email authentication]  - Sign-in
  /// [ Email Authentication] - Register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      throw 'Something went wrong, Please, try again';
    }
  }
}
