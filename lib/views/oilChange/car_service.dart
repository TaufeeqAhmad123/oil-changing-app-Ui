import 'dart:math';

import 'package:app_design/constant/app_colors.dart';
import 'package:app_design/constant/constant.dart';
import 'package:app_design/constant/sizedBox_extension.dart';
import 'package:app_design/widgets/botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CarServiceScreen extends StatefulWidget {
  const CarServiceScreen({super.key});

  @override
  State<CarServiceScreen> createState() => _CarServiceScreenState();
}

class _CarServiceScreenState extends State<CarServiceScreen> {
  final List<bool> isChecked = List<bool>.filled(10, false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: AppColors.primary,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 40),
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
          15.vSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Car Service Started',
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    10.vSpace,
                    Row(
                      children: [
                        const Expanded(
                          child: InerContainerWidget(
                              title: 'Oil Change',
                              des: '12 June 2021',
                              image: 'assets/icons/arrow_down.svg'),
                        ),
                        5.hSpace,
                        const Expanded(
                          child: InerContainerWidget(
                              title: 'Oil Change',
                              des: '12 June 2021',
                              image: 'assets/icons/arrow_down.svg'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          15.vSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'km Reading',
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    10.vSpace,
                    Row(
                      children: [
                        const Expanded(
                          child: InerContainerWidget(
                            title: 'Previous reading',
                            des: '12876 Km',
                          ),
                        ),
                        5.hSpace,
                        const Expanded(
                          child: InerContainerWidget(
                            title: 'Current reading',
                            des: '45263 Km',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          15.vSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Oil Fluid Sepecification',
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    10.vSpace,
                    Row(
                      children: [
                        const Expanded(
                          child: InerContainerWidget(
                            title: 'Oil Brand',
                            des: 'castrol',
                          ),
                        ),
                        5.hSpace,
                        const Expanded(
                          child: InerContainerWidget(
                            title: 'quantity',
                            des: '4 Ltrs',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          15.vSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 262,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Car Services Deadline',
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  //  10.vSpace,
                    Expanded(
                        child: GridView.builder(
                            // physics: const NeverScrollableScrollPhysics(),
                            itemCount: names.length,
                            gridDelegate:
                                // ignore: prefer_const_constructors
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2, childAspectRatio: 5),
                            itemBuilder: (context, index) {
                              return Row(children: [
                                Checkbox(
                       activeColor: AppColors.primary,
                                  checkColor: Colors.white,
                                  value: isChecked[index],
                                  onChanged: (value) {
                                 setState(() {
                                    isChecked[index]=!isChecked[index];
                                 });
                                  },
                                ),
                                5.hSpace,
                                Text(
                                  names[index],
                                  style: GoogleFonts.inter(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade800),
                                ),
                              ]);
                            })),
                           
                  ],
                ),
              ),
            ),
          ),
          5 .vSpace,
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
  final List<String> names = [
  'Oil Change',
  'Motor Oil',"Air Filter",'Gear Oli','Cabin Filter','Fuel Filter','Spark Plug','Brake Fluid','Coolant','Steering Fluid'
  ];
}

class InerContainerWidget extends StatelessWidget {
  final String title;
  final String des;
  final String? image;
  const InerContainerWidget({
    super.key,
    required this.title,
    required this.des,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8, right: 7, top: 5),
      height: 59,
      width: 176,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade500),
              ),
              // ignore: prefer_const_constructors
              Spacer(),
              SvgPicture.asset(
                image ?? '',
                color: Colors.black,
              ),
            ],
          ),
          //10.vSpace,
          Text(des,
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
        ],
      ),
    );
  }
  
}
