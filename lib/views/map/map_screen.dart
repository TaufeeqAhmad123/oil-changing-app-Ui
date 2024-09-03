import 'package:app_design/constant/app_colors.dart';
import 'package:app_design/constant/sizedBox_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 137,
            width: double.infinity,
            color: AppColors.primary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CircleAvatar(
                  radius: 32,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
                Image.asset('assets/images/splash1.png'),
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
          Expanded(
            child: Stack(
              children: [
                Image.asset('assets/images/map.png'),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search map',
                        hintStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            color: const Color(0xFFFFFF).withOpacity(0.5)),
                        prefixIcon: Icon(
                          Iconsax.search_normal_1,
                          color: Color(0xFFFFFFFF),
                        
                        ),
                        filled: true,
                        fillColor: const Color(0xFF09243F).withOpacity(0.7),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.white))),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal:14),
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
                                image: Image.asset('assets/images/1.png').image,
                                fit: BoxFit.cover),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              20.vSpace,
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '1.Manor Auto',
                                    style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  // Spacer(),
                                  16.hSpace,
                                  const Text('⭐ 5.0'),
                                ],
                              ),
                              Text(
                                'Service Center lnc',
                                style: GoogleFonts.poppins(
                                    fontSize: 20, fontWeight: FontWeight.w500),
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
                                          style: TextStyle(color: Colors.white),
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
                              padding: const EdgeInsets.only(right: 113,top: 5),
                              child: Row(
                                
                                children: [
                                    Text('Price- ', style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: Colors.grey.shade600)),
                                    Text('\$\$\$ ', style: GoogleFonts.poppins(
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
