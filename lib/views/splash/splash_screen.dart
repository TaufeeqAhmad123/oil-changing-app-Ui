import 'package:animate_do/animate_do.dart';
import 'package:app_design/constant/app_colors.dart';
import 'package:app_design/constant/constant.dart';
import 'package:app_design/constant/sizedBox_extension.dart';
import 'package:app_design/views/onboarding/onboarding_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
     navigateToPage(context, const OnBoardingScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(color: AppColors.primary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //  230.vSpace,
           100.vSpace,
          FadeInDown(
            duration: const Duration(seconds: 1),
            child: Image.asset(AppImages.splash)),
          100.vSpace,
        SpinKitSpinningLines(
          color: Colors.white,
          size: 50.0,
        ),
        ],
      ),
    ));
  }
}
