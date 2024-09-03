import 'package:app_design/constant/app_colors.dart';
import 'package:app_design/constant/sizedBox_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/style.dart';

class VerifyNumberScreen extends StatelessWidget {
  const VerifyNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final list=[
      '8','5','2',''
    ];
    return  Scaffold(
      backgroundColor: Colors.white
      ,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 302,
              width: double.infinity,
              color: AppColors.primary,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    111.vSpace,
                    Text(
                      'Verify your phone number',
                      style: poppinsLarge(context),
                    ),
                    10.vSpace,
                    Text(
                      'The purpose is to verify that you are using the right phone number',
                      style:GoogleFonts.inter(fontSize: 18,color: Colors.white)
                    ),
                  ],
                ),
              ),
            ),
            40.vSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'OTP Verification',
                style: poppinsBlack(context),
              ),
            ),
            15.vSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'We sent 4 digit code to your phone number',
                style: poppinsRegularsmall(context),
              ),
            ),

            20.vSpace,

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                  return Container(
                  height: 71,width: 71,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all( color: index == 2 ? AppColors.primary : Colors.grey.shade400,
                        width: 2,),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      list[index],
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                );
                }, separatorBuilder: (context,idex)=> 22.hSpace, itemCount: list.length),
              ),
            ),

             16.vSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Don't received the code? ",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.grey.shade700,
                  ),
                ),
                TextSpan(
                
                  text: 'Resend ',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary,
                  ),
                 
                )
              ])),
            )
        ],
      ),

    );
  }
}