// ignore_for_file: deprecated_member_use, prefer_const_constructors, avoid_print, prefer_interpolation_to_compose_strings, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/Authorization/landingpage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:onboarding/onboarding.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {


  late Material materialButton;
  late int index;
  final PageController controller = PageController();
  final onboardingPagesList = [

    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Appcolors.brown1,
          border: Border.all(
            width: 0.0,
            color: Appcolors.brown1,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: const EdgeInsets.only(top: 20,left: 24,right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: Inputdec1.inputDecoration.copyWith(
                    prefixIcon: Icon(Icons.perm_identity,color: Colors.white,),
                    hintText: 'First Name',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 42,
                ),

                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: Inputdec1.inputDecoration.copyWith(
                    prefixIcon: Icon(Icons.perm_identity,color: Colors.white,),
                    hintText: 'Last Name',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 42,
                ),

                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: Inputdec1.inputDecoration.copyWith(
                    prefixIcon: Icon(Icons.mail_outline,color: Colors.white,),
                    hintText: 'Email Address',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 42,
                ),

                IntlPhoneField(
                  flagsButtonMargin: EdgeInsets.only(left: 20),
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.keyboard_arrow_down_outlined,color: Colors.white,),
                    hintText: 'Phone Number',
                    hintStyle: Textstyle2Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
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
                  ),
                  dropdownIconPosition: IconPosition.trailing,
                  dropdownIcon: Icon(Icons.keyboard_arrow_down_outlined,color: Colors.white,),
                  initialCountryCode: 'US',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                  onCountryChanged: (country) {
                    print('Country changed to: ' + country.name);
                  },
                ),

                SizedBox(
                  height: 15,
                ),

                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: Inputdec1.inputDecoration.copyWith(
                    prefixIcon: Image.asset('assets/Images/password.png',scale: 3.5,),
                    hintText: 'Enter Password',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 42,
                ),

                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: Inputdec1.inputDecoration.copyWith(
                    prefixIcon: Image.asset('assets/Images/password.png',scale: 3.5,),
                    hintText: 'Confirm Password',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    ),


    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Appcolors.brown1,
          border: Border.all(
            width: 0.0,
            color: Appcolors.brown1,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Appcolors.blue1,
                        borderRadius: BorderRadius.circular(50),
                      ),
                     /* child:

                      _imageFile == null

                          ? Image.asset('assets/Image/edit_image.png',scale: 2,)

                          : Image.file(


                        _imageFile,

                        fit: BoxFit.fitWidth,

                      ),*/
                    ),
                    Padding(
                      padding: const EdgeInsets.all(35),
                      child: Icon(Icons.edit,color: Colors.white,size: 30),
                    ),
                  ],
                ),

                SizedBox(
                  height: 60,
                ),

                Row(
                  children: [
                    Container(
                      width: 165,
                      height: 48,
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                        decoration: Inputdec1.inputDecoration.copyWith(
                          hintText: "D.O.B",
                          suffixIcon: InkWell(
                              onTap: (){} , /*=> _selectDate(context),*/
                              child: Icon(Icons.calendar_today_outlined,color: Colors.white,))
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 45),
                      width: 165,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: Appcolors.grey1)
                      ),

                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                        ),
                        value: dropdownValue,
                        dropdownColor: Appcolors.brown1,
                        icon: const Icon(Icons.keyboard_arrow_down_outlined,color: Colors.white,),
                        elevation: 16,
                        style: const TextStyle(color: Colors.grey,fontSize: 15),
                        onChanged: (String? newValue) {
                          dropdownValue = newValue!;
                        },

                        items: <String>['Male', 'Female']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),

                        hint: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Gender",
                            style: TextStyle(color: Appcolors.grey4),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),

                SizedBox(
                  height: 42,
                ),

                TextField(
                  maxLines: 7,
                  style: TextStyle(color: Colors.white),
                  decoration: Inputdec1.inputDecoration.copyWith(
                    hintText: 'Address (Area and Street)',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 42,
                ),

                Row(
                  children: [
                    Container(
                      width: 165,
                      height: 48,
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                        decoration: Inputdec1.inputDecoration.copyWith(
                          hintText: "Pincode",
                          suffixIcon: Icon(Icons.location_on_outlined,color: Colors.white,size: 15,),
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 48),
                      width: 165,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: Appcolors.grey1)
                      ),

                      child: DropdownButtonFormField(
                        decoration: InputDecoration(

                          border: InputBorder.none,

                          filled: true,

                        ),
                        value: dropdownValue1,
                        dropdownColor: Appcolors.brown1,
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(Icons.arrow_drop_down,),
                        ),
                        elevation: 16,
                        style: const TextStyle(color: Colors.grey,fontSize: 15),
                        onChanged: (String? newValue) {
                          dropdownValue1 = newValue!;
                        },
                        items: <String>['City']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),

                  ],
                ),

                SizedBox(
                  height: 42,
                ),

                Row(
                  children: [
                    Container(
                      width: 165,
                      height: 48,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: Inputdec1.inputDecoration.copyWith(
                          hintText: "Region",
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 40),
                      width: 165,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Appcolors.grey1)
                      ),

                      child: DropdownButtonFormField(
                        decoration: InputDecoration(

                         border: InputBorder.none,

                          filled: true,

                        ),
                        value: dropdownValue2,
                        dropdownColor: Appcolors.brown1,

                        icon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(Icons.arrow_drop_down,),
                        ),
                        elevation: 16,
                        style: const TextStyle(color: Colors.grey,fontSize: 15),
                        onChanged: (String? newValue) {
                          dropdownValue2 = newValue!;
                        },
                        items: <String>['Country']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),

                  ],
                ),

                SizedBox(
                  height: 15,
                ),


              ],
            ),
          ),
        ),
      ),
    ),


    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Appcolors.brown1,
          border: Border.all(
            width: 0.0,
            color: Appcolors.brown1,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 140),
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(

                      border: InputBorder.none,

                      filled: true,

                    ),
                    value: degree,
                    dropdownColor: Appcolors.brown1,
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      degree = newValue!;
                    },
                    items: <String>['Degree']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                SizedBox(
                  height: 29.66,
                ),

                Container(
                  padding: EdgeInsets.only(left: 130),
                  width: 380,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(

                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                    ),
                    value: study,
                    dropdownColor: Appcolors.brown1,
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      study = newValue!;
                    },
                    items: <String>['Field of Study']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),


                SizedBox(
                  height: 29.66,
                ),

                TextField(
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                  decoration: Inputdec1.inputDecoration.copyWith(
                    hintText: 'University Name',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 15,color: Appcolors.grey2),
                  ),
                ),


                SizedBox(
                  height: 29.66,
                ),

                TextField(
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.calendar_today_outlined,color: Colors.white,),
                    hintText: 'Graduation Date',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 15,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 29.66,
                ),

                DottedBorder(
                  color: Appcolors.blue1,
                  strokeWidth: 1,
                  radius: Radius.circular(16),
                  dashPattern: [15, 15],
                  child: Container(
                    padding: EdgeInsets.only(left: 105,top: 11,bottom: 10.88),
                    child: Row(
                      children: [
                        Text('Add graduation history',style: TextStyle(color: Colors.white),),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.add,color: Appcolors.blue1,),
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 29.66,
                ),

                TextField(
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'Scholarship',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 15,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 29.66,
                ),

                Container(
                  padding: EdgeInsets.only(left: 120),
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(

                      border: InputBorder.none,

                      filled: true,

                    ),
                    value: work,
                    dropdownColor: Appcolors.brown1,
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      work = newValue!;
                    },
                    items: <String>['Work Availability']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                SizedBox(
                  height: 29.66,
                ),

                TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'Name of the scholarship',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 29.66,
                ),

                Container(
                  padding: EdgeInsets.only(left: 100),
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(

                      border: InputBorder.none,

                      filled: true,

                    ),
                    value: institution,
                    dropdownColor: Appcolors.brown1,
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      institution = newValue!;
                    },
                    items: <String>['Scholarship Institution']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                SizedBox(
                  height: 29.66,
                ),

                TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'Scholarship Received on',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 29.66,
                ),

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Appcolors.blue1)
                  ),
                  child: RaisedButton(
                    color: Appcolors.brown1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 90,
                          ),
                          Text('Upload Certificate',style: Textstyle1Light18.appbartextstyle.copyWith(
                              fontSize: 16,color: Appcolors.blue1),),
                          SizedBox(
                            width: 50,
                          ),
                          Image.asset('assets/Images/addIcon.png',scale: 3.5,),
                        ],
                      ),
                      onPressed: (){}
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    ),

    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Appcolors.brown1,
          border: Border.all(
            width: 0.0,
            color: Appcolors.brown1,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/Images/iconpdf.png',color: Colors.white,scale: 2,),

                SizedBox(
                  height: 19.29,
                ),

                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.blue1)
                  ),
                  child: RaisedButton(
                      color: Appcolors.brown1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Text('Upload C.V',style: Textstyle1Light18.appbartextstyle.copyWith(
                          fontSize: 16,color: Appcolors.blue1),),
                      onPressed: (){}
                  ),
                ),

                SizedBox(
                  height: 39,
                ),

                TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'Job Type',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'Interests',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'Company Location',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'Industry',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'Specialisation',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 30),
                      width: 165,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: Appcolors.grey1)
                      ),

                      child: DropdownButtonFormField(
                        decoration: InputDecoration(

                          border: InputBorder.none,

                          filled: true,

                        ),
                        value: language,
                        dropdownColor: Appcolors.brown1,
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(Icons.arrow_drop_down,),
                        ),
                        elevation: 16,
                        style: const TextStyle(color: Colors.grey,fontSize: 15),
                        onChanged: (String? newValue) {
                          language = newValue!;
                        },
                        items: <String>['Language']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 30),
                      width: 165,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: Appcolors.grey1)
                      ),

                      child: DropdownButtonFormField(
                        decoration: InputDecoration(

                          border: InputBorder.none,

                          filled: true,

                        ),
                        value: proficiency,
                        dropdownColor: Appcolors.brown1,
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(Icons.arrow_drop_down,),
                        ),
                        elevation: 16,
                        style: const TextStyle(color: Colors.grey,fontSize: 15),
                        onChanged: (String? newValue) {
                          proficiency = newValue!;
                        },
                        items: <String>['Proficiency']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),

                  ],
                ),

                SizedBox(
                  height: 30,
                ),

                DottedBorder(
                  color: Appcolors.blue1,
                  strokeWidth: 1,
                  radius: Radius.circular(100),
                  dashPattern: [15, 15],
                  child: Container(
                    padding: EdgeInsets.only(left: 120,top: 11,bottom: 10.88),
                    child: Row(
                      children: [
                        Text('Add language',style: TextStyle(color: Colors.white),),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.add,color: Appcolors.blue1,),
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Container(
                  padding: EdgeInsets.only(left: 110),
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(

                      border: InputBorder.none,

                      filled: true,

                    ),
                    value: salary,
                    dropdownColor: Appcolors.brown1,
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      salary = newValue!;
                    },
                    items: <String>['Salary Expectations']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Container(
                  padding: EdgeInsets.only(left: 55),
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(

                      border: InputBorder.none,

                      filled: true,

                    ),
                    value: abroad,
                    dropdownColor: Appcolors.brown1,
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      abroad = newValue!;
                    },
                    items: <String>['I would be willing to work abroad']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    ),


    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Appcolors.brown1,
          border: Border.all(
            width: 0.0,
            color: Appcolors.brown1,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  padding: EdgeInsets.only(left: 90),
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(

                      border: InputBorder.none,

                      filled: true,

                    ),
                    value: working,
                    dropdownColor: Appcolors.brown1,
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      working = newValue!;
                    },
                    items: <String>['I am currently working']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Container(
                  padding: EdgeInsets.only(left: 135),
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(

                      border: InputBorder.none,

                      filled: true,

                    ),
                    value: job,
                    dropdownColor: Appcolors.brown1,
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      job = newValue!;
                    },
                    items: <String>['Job Type']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Container(
                  padding: EdgeInsets.only(left: 100),
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(

                      border: InputBorder.none,

                      filled: true,

                    ),
                    value: Employment,
                    dropdownColor: Appcolors.brown1,
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      Employment = newValue!;
                    },
                    items: <String>['Type of Employment']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'Employer',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Container(
                  padding: EdgeInsets.only(left: 100),
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(

                      border: InputBorder.none,

                      filled: true,

                    ),
                    value: Duration,
                    dropdownColor: Appcolors.brown1,
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      Duration = newValue!;
                    },
                    items: <String>['Employment Duration']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),



                SizedBox(
                  height: 30,
                ),

                DottedBorder(
                  color: Appcolors.blue1,
                  strokeWidth: 1,
                  radius: Radius.circular(16),
                  dashPattern: [15, 15],
                  child: Container(
                    padding: EdgeInsets.only(left: 90,top: 11,bottom: 10.88),
                    child: Row(
                      children: [
                        Text('Add other Work Experience',style: Textstyle1Light18.appbartextstyle.copyWith(
                            fontSize: 16,color: Appcolors.blue1),),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.add,color: Appcolors.blue1,),
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Divider(
                  color: Appcolors.grey1,
                ),

                SizedBox(
                  height: 30,
                ),

                Container(
                  padding: EdgeInsets.only(left: 100),
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(

                      border: InputBorder.none,

                      filled: true,

                    ),
                    value: abroad1,
                    dropdownColor: Appcolors.brown1,
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      abroad1 = newValue!;
                    },
                    items: <String>['I have studied abroad']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'Studied abroad name',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'University',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'Foreign Education Duration',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Container(
                  padding: EdgeInsets.only(left: 90),
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(

                      border: InputBorder.none,

                      filled: true,

                    ),
                    value: abroad2,
                    dropdownColor: Appcolors.brown1,
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      abroad2 = newValue!;
                    },
                    items: <String>['Foreign Education Duration']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                DottedBorder(
                  color: Appcolors.blue1,
                  strokeWidth: 1,
                  radius: Radius.circular(16),
                  dashPattern: [15, 15],
                  child: Container(
                    padding: EdgeInsets.only(left: 75,top: 11,bottom: 10.88),
                    child: Row(
                      children: [
                        Text('Add other abroad Experience',style: Textstyle1Light18.appbartextstyle.copyWith(
                            fontSize: 16,color: Appcolors.blue1),),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.add,color: Appcolors.blue1,),
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),
                  child: RaisedButton(
                      color: Appcolors.brown1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 90,
                          ),
                          Text('Upload Certificate',style: Textstyle1Light18.appbartextstyle.copyWith(
                              fontSize: 16,color: Appcolors.grey1),),
                          SizedBox(
                            width: 50,
                          ),
                          Image.asset('assets/Images/addIcon.png',scale: 3.5,color: Colors.white,),
                        ],
                      ),
                      onPressed: (){}
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    ),

  ];

  static var dropdownValue = 'Male';
  static var dropdownValue1 = 'City';
  static var dropdownValue2 = 'Country';
  static var degree = 'Degree';
  static var study = 'Field of Study';
  static var work = 'Work Availability';
  static var institution = 'Scholarship Institution';
  static var language = 'Language';
  static var proficiency = 'Proficiency';
  static var salary = 'Salary Expectations';
  static var abroad = 'I would be willing to work abroad';
  static var working = 'I am currently working';
  static var job = 'Job Type';
  static var Employment = 'Type of Employment';
  static var Duration = 'Employment Duration';
  static var abroad1 = 'I have studied abroad';
  static var abroad2 = 'Foreign Education Duration';

  late File _imageFile;

  DateTime currentDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate) {
      setState(() {
        currentDate = pickedDate;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    materialButton = _skipButton();
    index = 0;
  }

  Material _skipButton({void Function(int)? setIndex}) {
    return Material(
      borderRadius: defaultSkipButtonBorderRadius,
      color: Appcolors.blue1,
      child: InkWell(
        borderRadius: defaultSkipButtonBorderRadius,
        onTap: () {
          if (setIndex != null) {
            index = 0;
            setIndex(4);
          }
        },
        child: const Padding(
          padding: EdgeInsets.only(left: 25,right: 25,top: 12,bottom: 12),
          child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 20,),
        ),
      ),
    );
  }

  Material get _signupButton {
    return Material(
      borderRadius: defaultProceedButtonBorderRadius,
      color: Appcolors.blue1,
      child: InkWell(
        borderRadius: defaultProceedButtonBorderRadius,
        onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => LandingPage()));
        },
        child: const Padding(
          padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
          child: Text(
            'Confirm Details',
            style: defaultProceedButtonTextStyle,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Appcolors.brown1,
      appBar: AppBar(
        backgroundColor: Appcolors.brown1,
        elevation: 0,
        toolbarHeight: 150,
        automaticallyImplyLeading: false,
        title: Text('Sign Up',style: Textstyle1Light18.appbartextstyle.copyWith(
            fontSize: 36,fontWeight: FontWeight.w500,color: Colors.white),),
        actions: [
          Row(
            children: [
              Image.asset('assets/Images/screen.png'),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
      body: Onboarding(

        pages: onboardingPagesList,
        onPageChange: (int pageIndex) {
          index = pageIndex;
        },
        startPageIndex: 0,
        footerBuilder: (context, dragDistance, pagesLength, setIndex) {
          return DecoratedBox(
            decoration: BoxDecoration(
              color: Appcolors.brown1,
              border: Border.all(
                width: 0.0,
                color: Appcolors.brown1,
              ),
            ),
            child: ColoredBox(

              color: Appcolors.brown1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: height*0.02,),
                  Padding(
                    padding: const EdgeInsets.only(right: 90),
                    child: CustomIndicator(
                        netDragPercent: dragDistance,
                        pagesLength: pagesLength,
                        indicator: Indicator(
                          indicatorDesign: IndicatorDesign.polygon(
                            polygonDesign: PolygonDesign(
                              polygon: DesignType.polygon_circle,
                              polygonSpacer: 25,
                            ),
                          ),
                        )
                    ),
                  ),

                  SizedBox(height: 35),

                  index == pagesLength - 1
                      ? _signupButton
                      : _skipButton(setIndex: setIndex),

                  SizedBox(
                    height: 30,
                  ),

                  Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 16,color: Colors.white),),
                          InkWell(

                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => LandingPage()));
                            },

                            child: Text(' Sign In',style: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 16,fontWeight: FontWeight.w800,color: Colors.white),),
                          ),
                        ],
                      ),
                      TextButton(onPressed: (){},
                        child:  Text('Go Back',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 16,color: Appcolors.grey4),),),
                    ],
                  ),
                  SizedBox(height: height*0.01,),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  getExternalStorageDirectory() {}

  static ScreenshotController() {}

  getApplicationDocumentsDirectory() {}

  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(

      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,

    );
    if (pickedFile != null) {
      setState(() {

        _imageFile = File(pickedFile.path);


      });
    }
  }


}

