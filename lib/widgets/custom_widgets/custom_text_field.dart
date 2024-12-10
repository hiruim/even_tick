import 'package:even_tick/config/app-color.dart';
import 'package:even_tick/config/app_assets.dart';
import 'package:even_tick/config/text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String heading;
  final String hintText;
  final bool isObscure;
  final Function(String) onChangeFunction;
  final Function? obscureTap;
  final bool isSuffix;

  const CustomTextField(
      {super.key,
      required this.heading,
      required this.hintText,
      required this.onChangeFunction,
      this.isObscure = false,
      this.isSuffix = false,
      this.obscureTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(heading, style: textFieldTitleStyle),
        SizedBox(
          height: 8,
        ),
        TextField(
          obscureText: isObscure,
          onChanged: (val) {
            onChangeFunction(val);
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            suffixIcon: IconButton(
              onPressed: () {
                obscureTap!();
              },
              icon: Image.asset(AppAssets.obscure),
            ),
            hintText: hintText,
            hintStyle: textFieldHintTextStyle,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: AppColors.iconButtonBoarderColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: AppColors.iconButtonBoarderColor,
                width: 1.0,
              ),
            ),
          ),
        )
      ],
    );
  }
}
TextStyle LightTextFeildStyle() {
    return TextStyle(
        color: Colors.black54,
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
        fontFamily: "poppins");
  }

TextStyle semiBoldTextFeildStyle() {
    return TextStyle(
        color: Colors.black87,
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        fontFamily: "poppins");
  }