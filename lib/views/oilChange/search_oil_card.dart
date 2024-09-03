import 'package:app_design/constant/app_colors.dart';
import 'package:app_design/constant/sizedBox_extension.dart';
import 'package:app_design/widgets/botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchOilCard extends StatelessWidget {
  const SearchOilCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 250,
                width: double.infinity,
                color: AppColors.primary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                    Image.asset('assets/images/splash1.png', height: 150),
                    SvgPicture.asset(
                      'assets/icons/app-logo.svg',
                      color: Colors.black,
                    ),
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
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 170,
                left: 20,
                right: 20,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  height: 266,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Text('Search oil change cards',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: AppColors.black)),
                      10.vSpace,
                      Row(
                        children: [
                          const Expanded(
                            child: SearchCardWidget(
                              leading: 'assets/icons/building.svg',
                              title: 'City',
                              trailing: 'assets/icons/arrow_down.svg',
                            ),
                          ),
                          10.hSpace,
                          const Expanded(
                            child: SearchCardWidget(
                              leading: 'assets/icons/smallcaps.svg',
                              title: 'Character',
                              trailing: 'assets/icons/arrow_down.svg',
                            ),
                          ),
                        ],
                      ),
                      20.vSpace,
                      Row(
                        children: [
                          const Expanded(
                            child: SearchCardWidget(
                              leading: 'assets/icons/smart-car.svg',
                              title: 'City',
                              trailing: 'assets/icons/arrow_down.svg',
                            ),
                          ),
                          10.hSpace,
                          const Expanded(
                            child: SearchCardWidget(
                              leading: 'assets/icons/keyboard.svg',
                              title: 'City',
                              trailing: 'assets/icons/ke.svg',
                            ),
                          ),
                        ],
                      ),
                      20.vSpace,
                      PrimaryButton(
                        onTap: () {},
                        text: 'Search Oil Card',
                        textColor: Colors.white,
                        bgColor: AppColors.primary,
                        borderRadius: 30,
                        elevation: 2,
                        textStyle: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          200.vSpace, // Add some spacing between the card and the grid
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 3 / 4,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: index == 1 ? AppColors.black : AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (index == 0) ...[
                        Row(
                          children: [
                            10.hSpace,
                            Text('Shop nearby',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: index == 1
                                        ? const Color(0xFFFFFFFF)
                                            .withOpacity(0.8)
                                        : AppColors.backgroundColor)),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey.shade500,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                        Center(
                          child: Image.asset(
                            'assets/images/map2.png',
                            height: 160,
                          ),
                        )
                      ],
                      15.vSpace,
                      if (index != 0) ...[
                        Center(
                          child: Container(
                            height: 113,
                            width: 151,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/2.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            10.hSpace,
                            Text(
                                index == 1
                                    ? ' Shop nearby'
                                    : index == 2
                                        ? 'Wheel Care'
                                        : 'AC Repair',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: index == 1
                                        ? const Color(0xFFFFFFFF)
                                            .withOpacity(0.8)
                                        : AppColors.backgroundColor)),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey.shade500,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text('Car and Motorcycle oil changes services',
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: index == 1
                                      ? const Color(0xFFFFFFFF).withOpacity(0.8)
                                      : AppColors.backgroundColor)),
                        ),
                      ],
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SearchCardWidget extends StatelessWidget {
  final String title;
  final String leading;
  final String trailing;
  const SearchCardWidget({
    super.key,
    required this.title,
    required this.leading,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 42,
      width: 165,
      decoration: BoxDecoration(
        color: const Color(0xff000000).withOpacity(0.03),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            leading,
            color: Colors.grey,
          ),
          8.hSpace,
          Text(
            title,
            style: GoogleFonts.poppins(
                fontSize: 10, color: const Color(0xFF999999)),
          ),
          const Spacer(),
          SvgPicture.asset(
            trailing,
            color: Colors.grey,
            height: 20,
          ),
        ],
      ),
    );
  }
}



// Column(
//                 children: [
//                   Row(
//                     children: [
//                       Expanded(
//                         child: Container(
//                           height: 225,
//                           decoration: BoxDecoration(
//                             color: AppColors.white,
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Row(
//                                 children: [
//                                   10.hSpace,
//                                   Text('Shop nearby',
//                                       style: GoogleFonts.poppins(
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.w500,
//                                           color: AppColors.backgroundColor)),
//                                   IconButton(
//                                     onPressed: () {},
//                                     icon: Icon(
//                                       Icons.arrow_forward_ios,
//                                       color: Colors.grey.shade500,
//                                       size: 18,
//                                     ),
//                                   )
//                                 ],
//                               ),
//                               Center(
//                                 child: Image.asset(
//                                   'assets/images/map2.png',
//                                   height: 160,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       10.hSpace,
//                       Expanded(
//                         child: Container(
//                           height: 225,
//                           decoration: BoxDecoration(
//                             color: AppColors.black,
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               15.vSpace,
//                               Center(
//                                 child: Container(
//                                   height: 113,
//                                   width: 151,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(15),
//                                     image: const DecorationImage(
//                                         image: AssetImage('assets/images/2.png'),
//                                         fit: BoxFit.cover),
//                                   ),
//                                 ),
//                               ),
//                               Row(
//                                 children: [
//                                   10.hSpace,
//                                   Text('Shop nearby',
//                                       style: GoogleFonts.poppins(
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.w500,
//                                           color: Color(0xFFFFFFFF).withOpacity(0.8))),
//                                   IconButton(
//                                     onPressed: () {},
//                                     icon: Icon(
//                                       Icons.arrow_forward_ios,
//                                       color: Colors.grey.shade500,
//                                       size: 18,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                                 child: Text(
//                                     'Car and Motorcycle oil changes services',
//                                     style: GoogleFonts.poppins(
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.normal,
//                                         color: Color(0xFFFFFFFF).withOpacity(0.8))),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   20.vSpace,
//                   Row(
//                     children: [
//                       Expanded(
//                         child: Container(
//                           height: 225,
//                           decoration: BoxDecoration(
//                             color: AppColors.white,
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               15.vSpace,
//                               Center(
//                                 child: Container(
//                                   height: 113,
//                                   width: 151,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(15),
//                                     image: const DecorationImage(
//                                         image: AssetImage('assets/images/3.png'),
//                                         fit: BoxFit.cover),
//                                   ),
//                                 ),
//                               ),
//                               Row(
//                                 children: [
//                                   10.hSpace,
//                                   Text('Shop nearby',
//                                       style: GoogleFonts.poppins(
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.w500,
//                                           color: Color(0xFFFFFFFF).withOpacity(0.8))),
//                                   IconButton(
//                                     onPressed: () {},
//                                     icon: Icon(
//                                       Icons.arrow_forward_ios,
//                                       color: Colors.grey.shade500,
//                                       size: 18,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                                 child: Text(
//                                     'Car and Motorcycle oil changes services',
//                                     style: GoogleFonts.poppins(
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.normal,
//                                         color: Color(0xFFFFFFFF).withOpacity(0.8))),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       10.hSpace,
//                       Expanded(
//                         child: Container(
//                           height: 225,
//                           decoration: BoxDecoration(
//                             color: AppColors.white,
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               15.vSpace,
//                               Center(
//                                 child: Container(
//                                   height: 113,
//                                   width: 151,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(15),
//                                     image: const DecorationImage(
//                                         image: AssetImage('assets/images/1.png'),
//                                         fit: BoxFit.cover),
//                                   ),
//                                 ),
//                               ),
//                               Row(
//                                 children: [
//                                   10.hSpace,
//                                   Text('Shop nearby',
//                                       style: GoogleFonts.poppins(
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.w500,
//                                           color: Color(0xFFFFFFFF).withOpacity(0.8))),
//                                   IconButton(
//                                     onPressed: () {},
//                                     icon: Icon(
//                                       Icons.arrow_forward_ios,
//                                       color: Colors.grey.shade500,
//                                       size: 18,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                                 child: Text(
//                                     'Car and Motorcycle oil changes services',
//                                     style: GoogleFonts.poppins(
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.normal,
//                                         color: Color(0xFFFFFFFF).withOpacity(0.8))),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),