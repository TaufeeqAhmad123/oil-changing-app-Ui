import 'package:animate_do/animate_do.dart';
import 'package:app_design/constant/app_colors.dart';
import 'package:app_design/constant/constant.dart';
import 'package:app_design/constant/sizedBox_extension.dart';
import 'package:app_design/constant/style.dart';
import 'package:app_design/views/history/history.dart';
import 'package:app_design/views/login_signup/login_screen.dart';
import 'package:app_design/views/profile/profile.dart';
import 'package:app_design/widgets/botton.dart';
import 'package:app_design/widgets/bottonNavBar.dart';
import 'package:app_design/widgets/textField.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 260,
              width: double.infinity,
              color: AppColors.primary,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    111.vSpace,
                    FadeInDown(
                      from: 35,
                      delay: const Duration(milliseconds: 200),
                      child: Text(
                        'Register',
                        style: poppinsLargeWhite(context),
                      ),
                    ),
                    10.vSpace,
                    FadeInDown(
                      from: 35,
                      delay: const Duration(milliseconds: 200),
                      child: Text('Create your account',
                          style: GoogleFonts.inter(
                              fontSize: 18, color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ),
            32.vSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: FadeInDown(
                  from: 35,
                  delay: const Duration(milliseconds: 300),
                  child: const ReusableTextField(
                    hintText: 'Jhon Dev',
                    lableText: 'Full Name',
                  )),
            ),
            26.vSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: FadeInDown(
                   from: 35,
                      delay:const Duration(milliseconds: 350),
                  child: const ReusableTextField(
                hintText: '+1023456789',
                lableText: 'Phone Number',
              )),
            ),
            26.vSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: FadeInDown(
                   from: 35,
                      delay:const Duration(milliseconds: 400),
                  child: const ReusableTextField(
                      hintText: 'jhondev@gmail.com', lableText: 'Email')),
            ),
            26.vSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: FadeInDown(
                   from: 35,
                      delay:const Duration(milliseconds: 450),
                  child: const ReusableTextField(
                hintText: '*********',
                lableText: 'password',
              )),
            ),
            26.vSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: FadeInDown(
                   from: 35,
                      delay:const Duration(milliseconds: 500),
                  child: const ReusableTextField(
                hintText: ' *********',
                lableText: 'Confirm Password',
              )),
            ),
            25.vSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: FadeInDown(
                   from: 35,
                      delay:const Duration(milliseconds: 550),
                child: PrimaryButton(
                  onTap: () => navigateToPage(context, const Bottonnavbar()),
                  text: 'Register',
                  textColor: Colors.white,
                  bgColor: AppColors.primary,
                  borderRadius: 40,

                  elevation: 3,
                  textStyle: poppinsRegular(context),
                  height: 60,
                  //image: 'assets/images/mobile.png',
                ),
              ),
            ),
            25.vSpace,
            FadeInDown(
                 from: 35,
                      delay:const Duration(milliseconds: 600),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'Already have an account? ',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.grey.shade700,
                  ),
                ),
                TextSpan(
                  text: 'Login ',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      navigateToPage(context, const LoginScreen());
                    },
                )
              ])),
            )
          ],
        ),
      ),
    );
  }
}
