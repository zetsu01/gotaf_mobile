import 'package:flutter/material.dart';
import 'package:gotaf/app/presentation/splash/splash_screen.dart';
import 'package:gotaf/app/theme/theme_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'gOtaf',
      theme: lightTheme,
      home: SplashScreen(),
    );
  }
}
