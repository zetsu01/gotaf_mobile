import 'package:flutter/material.dart';
import 'package:gotaf/app/presentation/login/login_screen.dart';
import 'package:gotaf/app/theme/theme_data.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen();

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () => {Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()))});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: GotafColors.primary),
        child: Center(
          child: Text(
            "gOtaf",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline3?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
