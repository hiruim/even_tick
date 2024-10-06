import 'dart:ui';

import 'package:even_tick/config/app-color.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

final TextStyle buttonTextStyle = TextStyle(
  fontSize: 14,
  color: AppColors.buttonTextColor,
  fontWeight: FontWeight.w600,
);

final loginHeadingStyle = GoogleFonts.poppins(
  fontSize: 24,
  fontWeight: FontWeight.w700,
  color: AppColors.headingColor,
);

final loginSubTextStyle = GoogleFonts.poppins(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: AppColors.headingColor,
);

final textFieldTitleStyle = GoogleFonts.poppins(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  color: AppColors.textFeildTitleColor,
);

final textFieldHintTextStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.hintTextColor);

final blueTextStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: AppColors.buttonPrimaryColor);

final filterTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
  fontSize: 10,
  color: AppColors.statusTextColor,
);

// final loginBottomSheetTextStyle = GoogleFonts.poppins(
//   fontSize: 14,
//   fontWeight: FontWeight.w400,
//   color: AppColors.headingColor,
// );
// final loginBottomSheetToggleText = GoogleFonts.poppins(
//   fontSize: 14,
//   fontWeight: FontWeight.w400,
//   color: Color(0xFFFFFFFF),
// );

TextStyle loginBottomSheetToggleText ({
  required Color fontColor
}){
  return GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: fontColor,
  );
}
