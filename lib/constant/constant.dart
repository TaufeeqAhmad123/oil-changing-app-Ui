import 'package:flutter/material.dart';


class AppImages{

static const String splash = 'assets/images/splash1.png';
static const String splashIcon = 'assets/images/splash2.png';
static const String onboarding1 = 'assets/images/onboarding1.png';
static const String onboarding2 = 'assets/images/onboarding2.png';
static const String onboarding3 = 'assets/images/onboarding3.png';
static const String facbook = 'assets/images/facbook.png';
static const String google = 'assets/images/google.png';


}

void navigateToPage(BuildContext context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}
