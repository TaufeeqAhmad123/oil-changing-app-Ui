import 'package:app_design/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

TextStyle poppinsMedium(BuildContext context) {
  return GoogleFonts.poppins(
      fontWeight: FontWeight.w500, fontSize: 22.sp, color: Colors.white,letterSpacing: 0.1.sp,);
}
TextStyle poppinsMediumBlack(BuildContext context) {
  return GoogleFonts.poppins(
      fontWeight: FontWeight.w500, fontSize: 22.sp, color: Color(0xFF484D52),letterSpacing: 0.1.sp,);
}
TextStyle poppinsLarge(BuildContext context) {
  return GoogleFonts.poppins(
      fontWeight: FontWeight.w700, fontSize: 22.sp, color: Colors.black,letterSpacing: 0.1.sp,);
}
TextStyle poppinsLargeWhite(BuildContext context) {
  return GoogleFonts.poppins(
      fontWeight: FontWeight.w700, fontSize: 22.sp, color: Colors.white,letterSpacing: 0.1.sp,);
}
TextStyle Regular(BuildContext context) {
  return GoogleFonts.poppins(
      fontWeight: FontWeight.w500, fontSize: 18.sp, color: AppColors.primary,letterSpacing: 0.1.sp,);
}
TextStyle poppinsBlack(BuildContext context) {
  return GoogleFonts.poppins(
      fontWeight: FontWeight.w500, fontSize: 22.sp, color: Colors.black,letterSpacing: 0.1.sp,);
}
TextStyle poppinsRegular(BuildContext context) {
  return GoogleFonts.montserrat(
      fontWeight: FontWeight.w500, fontSize: 18.sp, color: Colors.white,letterSpacing: 0.sp,);
}
TextStyle poppinsRegularBlack(BuildContext context) {
  return GoogleFonts.montserrat(
      fontWeight: FontWeight.w400, fontSize: 18.sp, color: Colors.black,letterSpacing:-1.5.sp,);
}
TextStyle poppinsRegularsmall(BuildContext context) {
  return GoogleFonts.montserrat(
      fontWeight: FontWeight.normal, fontSize: 16.sp, color: Colors.grey.shade700,letterSpacing: 0.sp);
}

TextStyle titleStyle(BuildContext context) {
  return GoogleFonts.montserrat(
      fontSize: 16.5.sp, fontWeight: FontWeight.w600, color: Colors.white);
}

TextStyle subtitleStyle(BuildContext context) {
  return GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
}

TextStyle subtitleGreyStyle(BuildContext context) {
  return GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: Colors.grey.shade500,
  );
}

EdgeInsets dPagePadding = const EdgeInsets.symmetric(
  horizontal: 20.0,
);

EdgeInsets dLeftPadding = const EdgeInsets.only(
  left: 20.0,
);
EdgeInsets dRightPadding = const EdgeInsets.only(
  right: 20.0,
);
