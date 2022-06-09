// ignore_for_file: deprecated_member_use, prefer_const_constructors, avoid_print, prefer_interpolation_to_compose_strings, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_element, depend_on_referenced_packages

import 'dart:io';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:hipoz/UI/Authorization/SignUp2.dart';
import 'package:hipoz/UI/Authorization/SignUp3.dart';
import 'package:hipoz/UI/Authorization/Utils/utils.dart';
import 'package:hipoz/UI/Authorization/signup1.dart';
import 'package:hipoz/UI/Authorization/signup4.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/Authorization/landingpage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final _formKey = GlobalKey<FormState>();



  final format = DateFormat("dd-MM-yyyy");

   @override
   void initState() {
     Utils.signupSelectpage = "page0";
     super.initState();
   }

  @override
  void dispose(){
    /*pageview.dispose();*/

    super.dispose();
  }

  final TextEditingController dob = TextEditingController();

   File? imageFile;
  File? _imageFile;
   File? get XFile => _imageFile;

  bool shouldPop = true;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;


    return WillPopScope(

      onWillPop: () async {
        return shouldPop;
      },

      child: Scaffold(
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
        body: Column(
          children: [
           /* Utils.signupSelectpage == "page0"
           ?*/ Expanded(

             child: SingleChildScrollView(

                child: Form(

                  key: _formKey,

                  child: Padding(
                    padding: const EdgeInsets.only(top: 20,left: 24,right: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter name';
                            }
                            return null;
                          },
                          maxLines: 1,
                          style: TextStyle(color: Colors.white),
                          decoration: Inputdec1.inputDecoration.copyWith(
                            prefixIcon: Icon(Icons.perm_identity,color: Colors.white,),
                            hintText: 'First Name',
                            hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 16,color: Appcolors.grey2),
                          ),
                        ),

                        SizedBox(
                          height: height*0.03,
                        ),

                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter name';
                            }
                            return null;
                          },
                          maxLines: 1,
                          style: TextStyle(color: Colors.white),
                          decoration: Inputdec1.inputDecoration.copyWith(
                            prefixIcon: Icon(Icons.perm_identity,color: Colors.white,),
                            hintText: 'Last Name',
                            hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 16,color: Appcolors.grey2),
                          ),
                        ),

                        SizedBox(
                          height: height*0.03,
                        ),

                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter email';
                            }
                            return null;
                          },
                          maxLines: 1,
                          style: TextStyle(color: Colors.white),
                          decoration: Inputdec1.inputDecoration.copyWith(
                            prefixIcon: Icon(Icons.mail_outline,color: Colors.white,),
                            hintText: 'Email Address',
                            hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 16,color: Appcolors.grey2),
                          ),
                        ),

                        SizedBox(
                          height: height*0.03,
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
                          height: height*0.01,
                        ),

                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter password';
                            }
                            return null;
                          },
                          maxLines: 1,
                          style: TextStyle(color: Colors.white),
                          decoration: Inputdec1.inputDecoration.copyWith(
                            prefixIcon: Image.asset('assets/Images/password.png',scale: 3.5,),
                            hintText: 'Enter Password',
                            hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 16,color: Appcolors.grey2),
                          ),
                        ),

                        SizedBox(
                          height: height*0.03,
                        ),

                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter password';
                            }
                            return null;
                          },
                          maxLines: 1,
                          style: TextStyle(color: Colors.white),
                          decoration: Inputdec1.inputDecoration.copyWith(
                            prefixIcon: Image.asset('assets/Images/password.png',scale: 3.5,),
                            hintText: 'Confirm Password',
                            hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 16,color: Appcolors.grey2),
                          ),
                        ),

                        SizedBox(
                          height: height*0.03,
                        ),

                        Stack(
                          children: [

                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Container(
                                  width: width*0.2,
                                  height: height*0.002,
                                  color: Colors.white,
                                ),
                              ),
                            ),

                            /*Center(
                              child: SmoothPageIndicator(
                                controller: signupSelectpage,
                                count:  5,
                                effect: SlideEffect(
                                    spacing:  8.0,
                                    radius:  14.0,
                                    dotWidth:  10.0,
                                    dotHeight:  10.0,
                                    paintStyle:  PaintingStyle.fill,
                                    strokeWidth:  1.0,
                                    dotColor:  Colors.white,
                                    activeDotColor:  Appcolors.blue1
                                ),
                              ),
                            ),*/

                          ],
                        ),

                        SizedBox(
                          height: height*0.07,
                        ),

                        RaisedButton(
                            color: Appcolors.blue1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(Icons.keyboard_arrow_right_outlined,color: Colors.white,size: 30,),
                            onPressed: () async {
                              Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) => const SignUp1(),
                                ),
                              );
                              /*setState(() {
                                Utils.signupSelectpage = "page1";
                              }
                              );*/

                            }
                        ),
                        SizedBox(
                          height: height*0.01,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Already have an account? ',style: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 16,color: Colors.white),),
                            TextButton(
                              onPressed: (){
                                Navigator.push(context,MaterialPageRoute(builder: (context) => LandingPage()));
                              },
                              child: Text('Sign In',style: Textstyle3Light18.appbartextstyle.copyWith(
                                  fontSize: 16,color: Colors.white),),)
                          ],
                        ),

                        SizedBox(
                          height: height*0.01,
                        ),

                      ],
                    ),
                  ),
                ),
              ),
           ),
            // : SizedBox(),


            /*Utils.signupSelectpage == "page1"
            ? Expanded(child: SingleChildScrollView(

              child: Padding(
                padding: const EdgeInsets.only(left: 24,right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    GestureDetector(

                      onTap: (){
                        _getFromGallery();
                      },

                      child: Container(

                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child:

                        imageFile == null

                            ? Image.asset('assets/Iocns/penicon.png',color: Colors.black,scale: 2,)

                            : Image.file(


                          imageFile!,

                          fit: BoxFit.cover,

                        ),

                      ),
                    ),



                    SizedBox(
                      height: height*0.04,
                    ),

                    Row(
                      children: [
                        Container(
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: Appcolors.grey1)
                          ),
                          child: DateTimeField(

                            format: format,
                            style: TextStyle(color: Colors.white),
                            decoration: Inputdec1.inputDecoration.copyWith(
                              suffixIcon: Icon(Icons.calendar_today_outlined,color: Colors.white,),
                              hintText: 'D.O.B',
                              hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                                  fontSize: 16,color: Appcolors.grey2),
                            ),
                            onShowPicker: (context, currentValue) async {
                              final date = await showDatePicker(
                                  context: context,
                                  firstDate: DateTime(1900),
                                  initialDate: currentValue ?? DateTime.now(),
                                  lastDate: DateTime(2100));
                              if (date != null) {
                                final time = await showTimePicker(
                                  context: context,
                                  initialTime:
                                  TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
                                );
                                return DateTimeField.combine(date, time);
                              } else {
                                return currentValue;
                              }
                            },
                          ),
                        ),

                        SizedBox(
                          width: width*0.04,
                        ),

                        Container(

                          width: 150,
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
                              alignment: Alignment.center,
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
                      height: height*0.02,
                    ),

                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter address';
                        }
                        return null;
                      },
                      maxLines: 7,
                      style: TextStyle(color: Colors.white),
                      decoration: Inputdec1.inputDecoration.copyWith(
                        hintText: 'Address (Area and Street)',
                        hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                            fontSize: 16,color: Appcolors.grey2),
                      ),
                    ),

                    SizedBox(
                      height: height*0.03,
                    ),

                    Row(
                      children: [
                        Container(
                          width: 165,

                          child:  TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter pincode';
                              }
                              return null;
                            },
                            maxLines: 1,
                            style: TextStyle(color: Colors.white),
                            decoration: Inputdec1.inputDecoration.copyWith(
                              hintText: "Pincode",
                              hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                                  fontSize: 16,color: Appcolors.grey2),
                              suffixIcon: Icon(Icons.location_on_outlined,color: Colors.white,size: 20,),
                            ),
                          ),
                        ),

                        SizedBox(
                          width: width*0.05,
                        ),

                        Container(

                          width: 150,
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
                            style: const TextStyle(color: Colors.grey,fontSize: 16),
                            onChanged: (String? newValue) {
                              dropdownValue1 = newValue!;
                            },
                            items: <String>['City', 'Surat', 'Navsari']
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
                      height: height*0.03,
                    ),

                    Row(
                      children: [
                        Container(
                          width: 165,

                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Region';
                              }
                              return null;
                            },
                            maxLines: 1,
                            style: TextStyle(color: Colors.white),
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

                          width: 150,
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
                            items: <String>['Country', 'India', 'Bangladesh', 'Australia']
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
                      height: height*0.04,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          child: Text('Skip',style: Textstyle1Light18.appbartextstyle.copyWith(
                              color: Appcolors.grey4,fontSize: 16
                          ),),
                          onTap: (){

                          },
                        ),
                      ],
                    ),

                    Stack(
                      children: [

                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Container(
                              width: width*0.2,
                              height: height*0.002,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        *//* Center(
                  child: SmoothPageIndicator(
                    controller: signupSelectpage,
                    count:  5,
                    effect:  SlideEffect(
                        spacing:  8.0,
                        radius:  14.0,
                        dotWidth:  10.0,
                        dotHeight:  10.0,
                        paintStyle:  PaintingStyle.fill,
                        strokeWidth:  1.0,
                        dotColor:  Colors.white,
                        activeDotColor:  Appcolors.blue1
                    ),
                  ),
                ),*//*

                      ],
                    ),

                    SizedBox(
                      height: height*0.07,
                    ),

                    Center(
                      child: RaisedButton(
                          color: Appcolors.blue1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(Icons.keyboard_arrow_right_outlined,color: Colors.white,size: 30,),
                          onPressed: () {
                            setState(() {
                              Utils.signupSelectpage = "page2";
                            }
                            );
                            print(Utils.signupSelectpage);
                          }
                      ),
                    ),

                    SizedBox(
                      height: height*0.01,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account? ',style: Textstyle1Light18.appbartextstyle.copyWith(
                            fontSize: 16,color: Colors.white),),
                        TextButton(
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => LandingPage()));
                          },
                          child: Text('Sign In',style: Textstyle3Light18.appbartextstyle.copyWith(
                              fontSize: 16,color: Colors.white),),)
                      ],
                    ),


                  ],
                ),
              ),
            ))
            : SizedBox(),*/

            /*Utils.signupSelectpage == "page2"
                ? Expanded(child: SignUp2())
                : SizedBox(),

            Utils.signupSelectpage == "page3"
                ? Expanded(child: SignUp3())
                : SizedBox(),

            Utils.signupSelectpage == "page4"
                ? Expanded(child: SignUp4())
                : SizedBox(),*/


          ],
        ),
      ),
    );
  }

  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(

      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,

    );
    if (pickedFile != null) {
      setState(() {

        imageFile = File(pickedFile.path);
        _imageFile = File(pickedFile.path);

      });
    }
  }

}

