import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:preorderpadi/utils/constants/color.dart';
import 'package:preorderpadi/utils/theme/theme.dart';

///  -- Use this class to setup themes, initial bindings, any animation and much more

class Preorderpadi extends StatelessWidget {
  const Preorderpadi({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const Scaffold(
        backgroundColor: TColors.primary,
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
