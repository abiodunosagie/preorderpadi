import 'package:flutter/material.dart';
import 'package:preorderpadi/utils/theme/theme.dart';

///  -- Use this class to setup temes, inital bindings, any animation and much more

class Preorderpadi extends StatelessWidget {
  const Preorderpadi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
    );
  }
}
