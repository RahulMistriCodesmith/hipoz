// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';

class Appcolors{

  static const List<Color> appcolor = [];

  static const Color black1 = Color(0xFF1E1D2B);
  static const Color greylight = Color(0xFFE5E5E5);
  static const Color blue1 = Color(0xFF36A8B7);
  static const Color grey1 = Color(0xFFD7D7D7);
  static const Color grey2 = Color(0xFFA5A5AA);
  static const Color brown1 = Color(0xFF1E1D2B);
  static const Color brown2 = Color(0xFF292937);
  static const Color blue2 = Color(0xFF9E1E1D2B);


}


class Inputdec1 {
  static InputDecoration inputDecoration = InputDecoration(

    //   focusColor: AppColor.white,

    hintStyle: Textstyle2Light18.appbartextstyle.copyWith(
        fontSize: 16,color: Appcolors.grey2),

   /* prefixIcon: Padding(
      padding: EdgeInsets.all(14.0),
      child: Image.asset("assets/Image/Search Icon.png", width: 10, height: 10,color: Colors.grey,),
    ),*/

    /*errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.redAccent)
    ),*/

    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(18)),
// borderSide: BorderSide(color: AppColor.black3button, width: 2),
    ),

    filled: true,

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(18)),
      borderSide: BorderSide(width: 2,color: Appcolors.grey2),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(18)),
      borderSide: BorderSide(width: 2,color: Appcolors.grey2),
    ),

  );
}

class Inputdec2 {
  static InputDecoration inputDecoration = InputDecoration(

    //   focusColor: AppColor.white,
    /*hintText: 'Email address',*/
    hintStyle: Textstyle2Light18.appbartextstyle.copyWith(
      fontSize: 16,color: Appcolors.grey2),
    border: InputBorder.none,
    /*prefixIcon: Padding(
      padding: EdgeInsets.all(14.0),
      child: Image.asset("assets/Image/Search Icon.png", width: 10, height: 10,color: Colors.grey,),
    ),*/

    /*errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.redAccent)
    ),*/

    /*border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
// borderSide: BorderSide(color: AppColor.black3button, width: 2),
    ),*/

    filled: true,

    /*enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(width: 2,),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(width: 2,),
    ),*/

  );
}

