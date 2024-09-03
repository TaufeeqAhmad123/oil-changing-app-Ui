import 'package:app_design/constant/app_colors.dart';
import 'package:app_design/constant/constant.dart';
import 'package:app_design/constant/sizedBox_extension.dart';
import 'package:app_design/model/dataModel.dart';
import 'package:app_design/views/oilChange/car_service.dart';
import 'package:app_design/views/oilChange/detail_screen.dart';
import 'package:app_design/widgets/botton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class OilChangeScreen extends StatelessWidget {
  const OilChangeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 247,
            width: double.infinity,
            color: AppColors.primary,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
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
                      10.hSpace,
                      Text(
                        'Oil Change Card',
                        style: GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      const Spacer(),
                      Container(
                          height: 58,
                          width: 58,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF).withOpacity(0.1),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/icons/notification.png',
                            color: const Color(0xFFFFFFFF).withOpacity(0.7),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Find oil change card..',
                      hintStyle: GoogleFonts.inter(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          color: const Color(0xFFFFFF).withOpacity(0.5)),
                      prefixIcon: Icon(
                        Iconsax.search_normal_1,
                        color: Color(0xFFFFFF).withOpacity(0.5),
                      ),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                    ),
                    enabled: false,
                  ),
                ),
              ],
            ),
          ),
          //10.vSpace,
          Expanded(
              child: ListView.builder(
                  itemCount: Datamodel.datalist.length,
                  itemBuilder: (context, idex) {
                    final item = Datamodel.datalist[idex];
                    return GestureDetector(
                      onTap: () => navigateToPage(
                          context,
                          DetailScreen(
                            data: Datamodel.datalist[idex],
                          )),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 14),
                        height: 150,
                        width: double.infinity,
                        color: Colors.white,
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 109,
                              width: 159,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: Image.asset(item.image).image,
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  20.vSpace,
                                  Text(
                                    item.title,
                                    style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    item.subtitle,
                                    style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 22,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: Colors.blueGrey.shade400,
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: const Center(
                                            child: Text(
                                              '12 ml',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        5.hSpace,
                                        Text(
                                          'from your location',
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              color: Colors.grey.shade600),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 113, top: 5),
                                    child: Row(
                                      children: [
                                        Text('Price- ',
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                color: Colors.grey.shade600)),
                                        Text('\$\$\$ ',
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                color: Colors.red.shade600)),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  })),

          
        ],
      ),
    );
  }
}
