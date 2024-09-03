import 'package:app_design/constant/app_colors.dart';
import 'package:app_design/constant/sizedBox_extension.dart';
import 'package:app_design/constant/style.dart';
import 'package:app_design/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditProfileDcreen extends StatelessWidget {
  const EditProfileDcreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 210,
              color: AppColors.primary,
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.loose,
                children: [
              Center(
                child: Row(
                 
                  children: [
                    20.hSpace,
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon:const Icon(Icons.arrow_back),
                      color: Colors.white,
                    ),
                50.hSpace,
                    Text(' Edit Profile', style: poppinsMedium(context)),
                  ],
                ),
              ),
                  Positioned(
                      left: 150,
                      top: 170,
                      child: Container(
                          width: 91,
                          height: 91,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 3),
                          ),
                          child: Stack(
                            children: [
                              Center(
                                child: Image.asset(
                                  'assets/images/profile.png',
                                  fit: BoxFit.contain,
                                  height: 100,
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                right: 2,
                                child: Container(
                                  width: 19,
                                  height: 19,
                                  decoration:const BoxDecoration(
                                    color: AppColors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child:SvgPicture.asset('assets/icons/gallery-edit.svg',height: 12,width: 12,),
                                ),
                              ),
                            ],
                          ))),
                ],
              ),
            ),
            50.vSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('Full Name', style: poppinsMediumBlack(context)),
            ),
            12.vSpace,
            Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ReusableTextField( lableText: 'Jhon Dev',radius:BorderRadius.circular(15),
                        
                         ),
            ),
            20.vSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('Email', style: poppinsMediumBlack(context)),
            ),
            12.vSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ReusableTextField( lableText: 'bazyan@gmail.com',radius:BorderRadius.circular(15),
                        
                         ),
            ),
            20.vSpace,
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('Phone no', style: poppinsMediumBlack(context)),
            ),
            12.vSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ReusableTextField( lableText: '+123456789',radius:BorderRadius.circular(15),
                        
                         ),
            ),
            20.vSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('Location ', style: poppinsMediumBlack(context)),
            ),
            12.vSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ReusableTextField( lableText: 'England',radius:BorderRadius.circular(15),
              suffixIcon: Icon(Icons.arrow_circle_down_rounded),
                        
                         ),
            ),
           
          ],
        ),
      ),
    );
  }
}
