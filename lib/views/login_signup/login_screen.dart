import 'package:animate_do/animate_do.dart';
import 'package:app_design/constant/app_colors.dart';
import 'package:app_design/constant/constant.dart';
import 'package:app_design/constant/sizedBox_extension.dart';
import 'package:app_design/constant/style.dart';
import 'package:app_design/views/login_signup/register_screen.dart';
import 'package:app_design/widgets/botton.dart';
import 'package:app_design/widgets/textField.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
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
                      child: Text(
                        'Login to your\naccount',
                        style: poppinsLargeWhite(context),
                      ),
                    ),
                    10.vSpace,
                    FadeInDown(
                      child: Text(
                        'signin to your account',
                        style:GoogleFonts.inter(fontSize: 18,color: Colors.white)
                      ),
                    ),
                  ],
                ),
              ),
            ),
            32.vSpace,
            Padding(
             padding:  const EdgeInsets.symmetric(horizontal: 20),
              child:  FadeInDown(
                from: 30,
                delay: const Duration(milliseconds: 200),
                child: const ReusableTextField(hintText: 'Jhon dev',lableText: 'Full Name',)),
            ),
            26.vSpace,
            Padding(
             padding:  const EdgeInsets.symmetric(horizontal: 20),
              child:  FadeInDown(
                 from: 30,
                 delay: const Duration(milliseconds: 300),
                
                child: const ReusableTextField(hintText: '***********',obscureText: true,lableText: "password",)),
            ),
            18.vSpace,
            Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FadeInDown(
                     from: 30,
                     delay: const Duration(milliseconds: 350),
                    child: Text(
                      'Forgot Password?',
                      style: subtitleGreyStyle(context),
                    ),
                  ),
                 
                ],
              ),
            ),
            25.vSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: FadeInDown(
                 from: 30,
                 delay: const Duration(milliseconds: 400),
                child: PrimaryButton(
                  onTap: () {},
                  text: 'Login',
                  textColor: Colors.white,
                  bgColor: AppColors.primary,
                  borderRadius: 20,
                  elevation: 0,
                  textStyle: poppinsRegular(context),
                  height: 60,
                  //image: 'assets/images/mobile.png',
                ),
              ),
            ),
            32.vSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: FadeInDown(
                 from: 30,
                 delay: const Duration(milliseconds: 450),
                child: Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                        endIndent: 10,
                      ),
                    ),
                    5.hSpace,
                    Text(
                      'Or with',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        //fontWeight: FontWeight.w500,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    10.hSpace,
                    const Expanded(
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                        endIndent: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            32.vSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: FadeInDown(
                 from: 30,
                 delay: const Duration(milliseconds: 500),
                child: PrimaryButton(
                  onTap: () {},
                  text: 'Google',
                  textColor: Colors.white,
                  bgColor: Colors.white,
                  borderRadius: 40,
                  elevation: 0,
                  borderColor: Colors.grey.shade300,
                  textStyle: Regular(context),
                  height: 60,
                  borderWith: 1,
                  image: AppImages.google,
                ),
              ),
            ),
            16.vSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: FadeInDown(
                 from: 30,
                 delay: const Duration(milliseconds: 550),
                child: PrimaryButton(
                  onTap: () {},
                  text: 'Facebook',
                  textColor: Colors.white,
                  bgColor: Colors.white,
                  borderColor: Colors.grey.shade300,
                  borderRadius: 40,
                  elevation: 0,
                  textStyle: Regular(context),
                  height: 60,
                  borderWith: 1,
                  image: AppImages.facbook,
                ),
              ),
            ),
            16.vSpace,
            FadeInDown(
               from: 30,
                delay: const Duration(milliseconds: 600),
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
                
                  text: 'Register ',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                    navigateToPage(context, const RegisterScreen());
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
