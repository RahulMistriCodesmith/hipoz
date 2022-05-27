// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Appcolors{

  static const List<Color> appcolor = [];

  static const Color black1 = Color(0xFF1E1D2B);
  static const Color greylight = Color(0xFFE5E5E5);
  static const Color blue1 = Color(0xFF36A8B7);
  static const Color grey1 = Color(0xFFD7D7D7);
  static const Color grey2 = Color(0xFFA5A5AA);
  static const Color brown1 = Color(0xFF1E1D2B);
  static const Color brown2 = Color(0xFF1E1D2B);


}


class Inputdec1 {
  static InputDecoration inputDecoration = InputDecoration(

    //   focusColor: AppColor.white,
    hintText: 'Search here',
    hintStyle: TextStyle(color: Colors.grey,fontFamily: 'Sk-Modernist-Regular',fontSize: 15),

    prefixIcon: Padding(
      padding: EdgeInsets.all(14.0),
      child: Image.asset("assets/Image/Search Icon.png", width: 10, height: 10,color: Colors.grey,),
    ),

    /*errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.redAccent)
    ),*/

    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
// borderSide: BorderSide(color: AppColor.black3button, width: 2),
    ),

    filled: true,

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide(width: 2,color: Colors.white),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide(width: 2,color: Colors.white),
    ),

  );
}