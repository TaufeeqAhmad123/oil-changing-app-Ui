import 'package:animate_do/animate_do.dart';
import 'package:app_design/constant/app_colors.dart';
import 'package:app_design/constant/constant.dart';
import 'package:app_design/constant/sizedBox_extension.dart';
import 'package:app_design/constant/style.dart';
import 'package:app_design/views/login_signup/account_screen.dart';
import 'package:app_design/views/login_signup/login_screen.dart';
import 'package:app_design/widgets/botton.dart';
import 'package:flutter/material.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
           FadeInDown(
             child: Text(
              'Create\n Your account with',
              textAlign: TextAlign.center,
              style: poppinsMedium(context),
                       
                       ),
           ),
          FadeInDown(
           
            animate: true,
            child: Image.asset('assets/images/image 37.png' ,color: Colors.white,)),
          const Spacer(),
          Container(
            height: 256,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
              child: Column(
                children: [
                  Container(
                    height: 5,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  10.vSpace,
                  FadeInUp(
                    curve: Curves.bounceOut,
                    child: PrimaryButton(
                      onTap: () {
                        navigateToPage(context, const LoginScreen());
                      },
                      text: 'Login',
                      textColor: AppColors.white,
                      bgColor: AppColors.primary,
                      
                      height: 60,
                      width: 386,
                      textStyle: poppinsRegular(context),
                      borderRadius: 20,
                      elevation: 0,
                    ),
                  ),
                  10.vSpace,
                  FadeInUp(
                    curve: Curves.bounceOut,
                    child: PrimaryButton(
                      onTap: () {
                        navigateToPage(context, const CreateAccount());
                      },
                      text: 'SignUp',
                      textColor: AppColors.white,
                      bgColor: AppColors.white,
                      height: 60,
                      width: 386,
                      borderRadius: 20,
                      elevation: 0,
                      borderColor: AppColors.primary,
                      textStyle: poppinsRegularBlack(context),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
