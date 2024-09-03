import 'package:app_design/constant/app_colors.dart';
import 'package:app_design/constant/constant.dart';
import 'package:app_design/constant/sizedBox_extension.dart';
import 'package:app_design/model/dataModel.dart';
import 'package:app_design/views/oilChange/car_service.dart';
import 'package:app_design/widgets/botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class DetailScreen extends StatelessWidget {
  final Datamodel data;
  const DetailScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: double.infinity,
            color: AppColors.primary,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 90),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                      Text(
                        'Oil Change Card',
                        style: GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          20.vSpace,
          Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 217,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(data.image), fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                bottom: -20,
                left: 100,
                child: Container(
                  height: 47,
                  width: 184,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'Per hour | \$ 100',
                      style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          40.vSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Manor Auto Service\nCenter Lnc',
                  style: GoogleFonts.inter(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                const Spacer(),
                Text('⭐ 5.0',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
              ],
            ),
          ),
          15.vSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/user.svg',
                ),
                10.hSpace,
                Text(
                  '100k Users',
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500),
                ),
              ],
            ),
          ),
          15.vSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
                'Lorem ipsum dolor sit amet consectetur. Magnis ligula eleifend nunc in. Sed phasellus.',
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade700)),
          ),
          20.vSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('Shop Contact Information',
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
          ),
          15.vSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/location.svg',
                  height: 19,
                ),
                10.hSpace,
                Text(
                  'Street 58, Marchent Road, Manaid',
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade700),
                ),
                const Spacer(),
                SvgPicture.asset(
                  'assets/icons/gps.svg',
                  height: 20,
                ),
              ],
            ),
          ),
          20.vSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Icon(Iconsax.call_calling5),
                10.hSpace,
                Text(
                  '+1 234 567 890',
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade700),
                ),
              ],
            ),
          ),
          20.vSpace,
           Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: PrimaryButton(
                                        text: 'Book Now',
                                        textColor: Colors.white,
                                        bgColor: AppColors.primary,
                                        borderRadius: 30,
                                        elevation: 2,
                                        height: 60,
                                        textStyle: GoogleFonts.poppins(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                        onTap: () {
                                          navigateToPage(context, const CarServiceScreen());

                                        },
                                      ),
                                    )
        ],
      ),
    );
  }
}
