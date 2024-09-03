import 'package:app_design/constant/app_colors.dart';
import 'package:app_design/constant/sizedBox_extension.dart';
import 'package:app_design/constant/style.dart';
import 'package:app_design/model/service_history.dart';
import 'package:app_design/widgets/bottom_sheet.dart';
import 'package:app_design/widgets/botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:iconsax/iconsax.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 162,
              width: double.infinity,
              color: AppColors.primary,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 90),
                child: Text(
                  'History',
                  style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
            20.vSpace,
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Upcoming',
                style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            15.vSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    title: Text(
                      'Track your service',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          'Your service will be done soon',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.red.shade500),
                        ),
                        5.hSpace,
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.red.shade500,
                          size: 14,
                        )
                      ],
                    ),
                    trailing: Container(
                      padding: const EdgeInsets.all(8),
                      height: 42,
                      width: 42,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xFFF1F2F3)),
                      child: SizedBox(
                          child: SvgPicture.asset(
                        'assets/icons/gas.svg',
                        height: 20,
                        width: 20,
                        fit: BoxFit.contain,
                      )),
                    ),
                  )),
            ),
            20.vSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'Previous Services',
                    style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      BottomSheetWidget(context);
                    },
                    child: SvgPicture.asset(
                      'assets/icons/arrow_down.svg',
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
        
         ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                  itemCount: ServiceHistory.serviceHistoryList.length,
                  itemBuilder: (context, index) {
                    var history = ServiceHistory.serviceHistoryList[index];
                    return ListTileWidget(
                      title: history.title,
                      subtitle: history.subtitle,
                      image: history.image,
                    );
                  }),
            
            // const ListTileWidget(
            //   title: 'Parts sells Service',
            //   subtitle: 'Booking no: 12345',
            //   image: 'assets/icons/car_repair.svg',
            //   trailing: '10 jan 2024',
            // ),
          ],
        ),
      ),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String? image;
  final String? trailing;

  const ListTileWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListTile(
        leading: Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            color: Color(0xFFF1F2F3),
            shape: BoxShape.circle,
          ),
          child: Center(
              child: SvgPicture.asset(
            image ?? "",
          )),
        ),
        title: Text(
          title,
          style: GoogleFonts.poppins(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        subtitle: Text(
          subtitle ?? '',
          style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey.shade500),
        ),
        trailing: Text(
          trailing ?? '10 jan 2024',
          style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey.shade500),
        ),
      ),
    );
  }
}
