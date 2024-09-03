import 'package:app_design/constant/app_colors.dart';
import 'package:app_design/constant/constant.dart';
import 'package:app_design/constant/sizedBox_extension.dart';
import 'package:app_design/views/oilChange/oil_change_screen.dart';
import 'package:app_design/views/oilChange/search_oil_card.dart';
import 'package:app_design/widgets/botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: Container(
              // height: 250,
              width: double.infinity,
              color: AppColors.primary,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 44),
                child: Column(
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            AssetImage('assets/images/profile.png'),
                      ),
                      title: Text(
                        'Welcome,',
                        style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      subtitle: Text(
                        'Bazyan',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      trailing: Container(
                          height: 58,
                          width: 58,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF).withOpacity(0.1),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/icons/notification.png',
                            color: const Color(0xFFFFFFFF).withOpacity(0.7),
                          )),
                    ),
                    10.vSpace,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: GestureDetector(
                        onTap: () =>
                            navigateToPage(context, const SearchOilCard()),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Find oil change card..',
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            hintStyle: GoogleFonts.inter(
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
                                color: const Color(0xFFFFFF).withOpacity(0.5)),
                            prefixIcon: Icon(
                              Iconsax.search_favorite,
                              color: const Color(0xFFFFFF).withOpacity(0.5),
                            ),
                            filled: true,
                            fillColor: Colors.grey.withOpacity(0.2),
                          ),
                          enabled: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.vSpace,
              Text(
                'Service Providers',
                style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF09243F)),
              ),
              10.vSpace,
              SizedBox(
                height: 300,
                child: GridView.builder(
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 15,
                            childAspectRatio: 1.25),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(10),
                        height: 128,
                        width: 183,
                        decoration: BoxDecoration(
                            color: const Color(0xFF09243F),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 43,
                              width: 43,
                              decoration: BoxDecoration(
                                  color:
                                      const Color(0xFFFFFFFF).withOpacity(0.1),
                                  shape: BoxShape.circle),
                              child: SvgPicture.asset(
                                'assets/icons/oil-box.svg',
                              ),
                            ),
                            13.vSpace,
                            Text(
                              index == 0
                                  ? 'Oil Change'
                                  : index == 1
                                      ? 'Wheels Care'
                                      : index == 2
                                          ? 'Ac Repair'
                                          : 'Engine Tune-Up',
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            5.vSpace,
                            Text(
                              'Car and Motorcycle',
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              //10.vSpace,
              PrimaryButton(
                onTap: () => navigateToPage(context, const OilChangeScreen()),
                text: 'Show All',
                textColor: Colors.white,
                bgColor: Color(0xFF3097FF),
                borderRadius: 30,
                elevation: 2,
                textStyle: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              10.vSpace,
              Text(
                'My Service Status',
                style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF09243F)),
              ),
              10.vSpace,
              Container(
                height: 68,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xFF09243F),
                    borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(10),
                    height: 43,
                    width: 43,
                    decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF).withOpacity(0.1),
                        shape: BoxShape.circle),
                    child: SvgPicture.asset(
                      'assets/icons/oil-box.svg',
                    ),
                  ),
                  title: Text(
                    'Car Oil Change',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  subtitle: Text(
                    'Apr 14 2024',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                  trailing: Container(
                    padding: const EdgeInsets.all(10),
                    height: 43,
                    width: 43,
                    decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF).withOpacity(0.1),
                        shape: BoxShape.circle),
                    child: SvgPicture.asset(
                      'assets/icons/more.svg',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
