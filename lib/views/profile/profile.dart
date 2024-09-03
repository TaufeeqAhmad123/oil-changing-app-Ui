import 'package:app_design/constant/app_colors.dart';
import 'package:app_design/constant/constant.dart';
import 'package:app_design/constant/sizedBox_extension.dart';
import 'package:app_design/constant/style.dart';
import 'package:app_design/views/profile/edit_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 190,
              color: AppColors.primary,
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.loose,
                children: [
                  Center(child: Text('Profile', style: poppinsMedium(context))),
                  Positioned(
                      left: 20,
                      top: 150,
                      child: Container(
                        width: 91,
                        height: 91,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 3),
                        ),
                        child: Image.asset(
                          'assets/images/profile.png',
                          fit: BoxFit.fill,
                        ),
                      )),
                ],
              ),
            ),
            20.vSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      navigateToPage(context,const EditProfileDcreen());
                    },
                    child: Container(
                      height: 31,
                      width: 79,
                      decoration: BoxDecoration(
                          //color: Colors.black,
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.blue)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset('assets/icons/edit.svg'),
                          Text('Edit ',
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: Colors.blue)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('Mr Bayzan', style: poppinsLarge(context)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                  '2873 westheimer Rd, Snaia Ana, Bil baotrin,Illnais 5864',
                  style: poppinsRegularBlack(context)),
            ),
            //20.vSpace,
        
            25.vSpace,
            const ListTileWidget(
              title: 'History',
              image: 'assets/icons/note.svg',
            ),
            25.vSpace,
            ListTileWidget(
              title: 'Notification',
              image: 'assets/icons/notification.svg',
              trailing: SizedBox(
                  child: CupertinoSwitch(
                value: true,
                onChanged: (value) {},
              )),
            ),
            25.vSpace,
            const ListTileWidget(
              title: 'setting',
              image: 'assets/icons/setting.svg',
            ),
            25.vSpace,
            const ListTileWidget(
              title: 'Support',
              image: 'assets/icons/support.svg',
            ),
            25.vSpace,
            const ListTileWidget(
              title: 'Logout',
              image: 'assets/icons/logout.svg',
            ),
          ],
        ),
      ),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  final String title;
  final String image;
  final Widget? trailing;

  const ListTileWidget({
    super.key,
    required this.title,
    required this.image,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
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
            image,
            height: 20,
          )),
        ),
        title: Text(
          title,
          style: poppinsRegularBlack(context),
        ),
        trailing: trailing,
      ),
    );
  }
}
