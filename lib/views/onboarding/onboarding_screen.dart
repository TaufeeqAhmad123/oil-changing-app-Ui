import 'package:animate_do/animate_do.dart';
import 'package:app_design/constant/app_colors.dart';
import 'package:app_design/constant/constant.dart';
import 'package:app_design/constant/sizedBox_extension.dart';
import 'package:app_design/constant/style.dart';
import 'package:app_design/model/onboarding_model.dart';
import 'package:app_design/views/login_signup/welcom_screen.dart';
import 'package:app_design/widgets/botton.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController1 = PageController(initialPage: 0);
  final PageController _pageController2 = PageController(initialPage: 0);
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColors.primary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //  mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            //flex: 5,
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: onBoardinglist.length,
                physics: const BouncingScrollPhysics(),
                controller: _pageController1,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 5,
                        child: OnBoardingCard(
                          onBoardingModel: onBoardinglist[index],
                        ),
                      ),
                      5.vSpace,
                      Flexible(
                          flex: 2,
                          child: FadeInRight(
                            child: OnboardingTextCard(
                                onBoardingModel: onBoardinglist[index]),
                          ))
                    ],
                  );
                }),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: DotsIndicator(
              dotsCount: onBoardinglist.length,
              position: _currentIndex,
              decorator: DotsDecorator(
                color: Colors.grey.shade800,
                activeColor: AppColors.primary,
                size: const Size(10, 10),
                activeSize: const Size(25, 7),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          FadeInUp(
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 23, bottom: 8),
              child: PrimaryButton(
                elevation: 0,
                onTap: () {
                  if (_currentIndex == onBoardinglist.length - 1) {
                    navigateToPage(context,const WelcomScreen());
                  } else {
                    _pageController1.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.fastOutSlowIn,
                    );
                    _pageController2.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.fastOutSlowIn,
                    );
                  }
                },
                text: 'Continue',
                bgColor: AppColors.primary,
                borderRadius: 20,
                height: 60,
                width: 386,
                textColor: AppColors.white,
                textStyle: poppinsRegular(context),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Center(
              child: TextButton(
                  onPressed: () {
                  navigateToPage(context,const WelcomScreen());
                  },
                  child: _currentIndex == onBoardinglist.length - 1
                      ? const Text('')
                      : Text('Skip', style: poppinsRegularsmall(context))),
            ),
          ),
        ],
      ),
    );
  }
}

class OnBoardingCard extends StatefulWidget {
  OnBoarding onBoardingModel;
  OnBoardingCard({
    super.key,
    required this.onBoardingModel,
  });

  @override
  State<OnBoardingCard> createState() => _OnBoardingCardState();
}

class _OnBoardingCardState extends State<OnBoardingCard> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.onBoardingModel.image,
      height: 450,
      width: double.maxFinite,
      fit: BoxFit.fill,
    );
  }
}

class OnboardingTextCard extends StatelessWidget {
  final OnBoarding onBoardingModel;
  const OnboardingTextCard({required this.onBoardingModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Text(
            onBoardingModel.title,
            //textAlign: TextAlign.left,
            style: poppinsBlack(context),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(onBoardingModel.description,
              textAlign: TextAlign.left,
              style: GoogleFonts.raleway(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
        ],
      ),
    );
  }
}
