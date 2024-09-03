import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableTextField extends StatelessWidget {
  final String? hintText;
  final BorderRadius? radius;
  final String? lableText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final bool obscureText;
  final bool enabled;
  final Color? fillColor;
  final Color? textColor;
  final Color? borderColor;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;

  const ReusableTextField({
    Key? key,
     this.hintText,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.obscureText = false,
    this.enabled = true,
    this.fillColor,
    this.textColor,
    this.borderColor,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.onSubmitted,  this.lableText, this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        obscureText: obscureText,
        enabled: enabled,
        
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: lableText,
          labelStyle: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade600,
          ),
          filled: false,
          fillColor: fillColor ?? Colors.white,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 58),
          border: OutlineInputBorder(
            borderRadius:radius ?? BorderRadius.circular(30),
            borderSide: BorderSide(
              color: borderColor ?? Colors.grey,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius:radius ?? BorderRadius.circular(30),
            borderSide: BorderSide(
              color: borderColor ?? Colors.grey,
              width: 1.0,
            ),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
        style: GoogleFonts.poppins(
          fontSize: 16,
          color: textColor ?? Colors.black,
        ),
      ),
    );
  }
}
