import 'package:app_design/constant/app_colors.dart';
import 'package:app_design/constant/sizedBox_extension.dart';
import 'package:app_design/views/history/history.dart';
import 'package:app_design/widgets/botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

Future<dynamic> BottomSheetWidget(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (context) => Container(
            height: 589,
            color: Colors.white,
            child: Column(
              children: [
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
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset(
                          'assets/icons/close-circle.svg',
                          //  color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration:  BoxDecoration(
                      color: Color(0xFF940000).withOpacity(0.1),
                     borderRadius: BorderRadius.all(Radius.circular(15)), 
                    ),
                    child: Center(
                        child: SvgPicture.asset(
                      'assets/icons/car.svg',
                    )),
                  ),
                  title: Text(
                    'Parts sells Service',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    'Booking no: 123456',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade500),
                  ),
                  trailing: Text(
                    '⭐4.9',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade500),
                  ),
                ),
             
                ListTile(
                  leading: Icon(
                    Iconsax.map_15,
                    color: Colors.grey.shade500,
                  ),
                  title: Text(
                    'Lorem ipsum dolor sit amet consectetur. Magnis ligula eleifend.',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Iconsax.calendar,
                    color: Colors.grey.shade500,
                  ),
                  title: Text(
                    '16 jan 2024 - 12:00 PM',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Iconsax.message_text_15,
                    color: Colors.grey.shade500,
                  ),
                  title: Text(
                    'Message',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Iconsax.call_calling5,
                    color: Colors.grey.shade500,
                  ),
                  title: Text(
                    '(+01) 234 5678901',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                ),
                20.vSpace,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: PrimaryButton(
                    text: 'Book',
                    textColor: Colors.white,
                    bgColor: AppColors.primary,
                    borderRadius: 30,
                    elevation: 2,
                    height: 60,
                    textStyle: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                    onTap: () {},
                  ),
                )
              ],
            ),
          ));
}
