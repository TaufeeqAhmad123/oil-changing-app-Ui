import 'package:app_design/constant/app_colors.dart';
import 'package:app_design/views/history/history.dart';
import 'package:app_design/views/home/home_screen.dart';
import 'package:app_design/views/map/map_screen.dart';
import 'package:app_design/views/oilChange/oil_change_screen.dart';
import 'package:app_design/views/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

class Bottonnavbar extends StatefulWidget {
  const Bottonnavbar({super.key});

  @override
  State<Bottonnavbar> createState() => _BottonnavbarState();
}

class _BottonnavbarState extends State<Bottonnavbar> {
  String _getIconAsset(String assetName, bool isSelected) {
    return isSelected
        ? 'assets/icons/${assetName}_selected.svg'
        : 'assets/icons/${assetName}.svg';
  }

  int _selectedIndex = 0;

  List pages = [
    const HomeScreen(),
    const MapScreen(),
    const HistoryScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[_selectedIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        height: 95,
        child: GNav(
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          tabBackgroundColor: AppColors.primary,
          activeColor: Colors.white,
          gap: 8,
          rippleColor: Colors.grey,
          hoverColor: Colors.grey,
          color: Colors.grey.shade600,
          curve: Curves.easeInSine,
          duration: const Duration(milliseconds: 500),
          tabs: [
            GButton(
              icon: Iconsax.home_25,
              text: 'Home',
            ),
            const GButton(
              icon: Iconsax.map,
              text: 'Map',
            ),
            const GButton(
              icon: Iconsax.clipboard,
              text: 'History',
            ),
            const GButton(
              icon: Iconsax.user,
              text: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
