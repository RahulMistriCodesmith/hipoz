import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/Authorization/landingpage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SignUp4 extends StatefulWidget {
  const SignUp4({Key? key}) : super(key: key);

  @override
  State<SignUp4> createState() => _SignUp4State();
}

class _SignUp4State extends State<SignUp4> {


  /*late PageController signupSelectpage;*/

  final format = DateFormat("dd-MM-yyyy");

  static var working = 'I am currently working';
  static var job = 'Job Type';
  static var Employment = 'Type of Employment';
  static var duration = 'Employment Duration';
  static var abroad1 = 'I have studied abroad';
  static var abroad2 = 'Foreign Education Duration';
  final TextEditingController dob = TextEditingController();


  File? imageFile;
  File? _imageFile;
  File? get XFile => _imageFile;

  bool shouldPop = true;

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
        body: SingleChildScrollView(

      child: Padding(
        padding: const EdgeInsets.only(left: 24,right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(

              width: width*2,
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
                items: <String>['I am currently working', 'yes', 'no']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),

            SizedBox(
              height: height*0.02,
            ),

            Container(

              width: width*2,
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
                items: <String>['Job Type', 'developer' ,'accountant']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),

            SizedBox(
              height: height*0.02,
            ),

            Container(

              width: width*2,
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
                items: <String>['Type of Employment', 'full time' , 'part time']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),

            SizedBox(
              height: height*0.02,
            ),

            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              maxLines: 1,
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
              height: height*0.02,
            ),

            Container(

              width: width*2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Appcolors.grey1)
              ),

              child: DropdownButtonFormField(
                decoration: InputDecoration(

                  border: InputBorder.none,

                  filled: true,

                ),
                value: duration,
                dropdownColor: Appcolors.brown1,
                icon: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: const Icon(Icons.arrow_drop_down,),
                ),
                elevation: 16,
                style: const TextStyle(color: Colors.grey,fontSize: 15),
                onChanged: (String? newValue) {
                  duration = newValue!;
                },
                items: <String>['Employment Duration', '1year', '2year']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),



            SizedBox(
              height: height*0.02,
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
              height: height*0.03,
            ),

            Divider(
              color: Appcolors.grey1,
            ),

            SizedBox(
              height: height*0.03,
            ),

            Container(

              width: width*2,
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
                items: <String>['I have studied abroad', 'yes', 'no']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),

            SizedBox(
              height: height*0.02,
            ),

            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter name';
                }
                return null;
              },
              maxLines: 1,
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
              height: height*0.02,
            ),

            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter University';
                }
                return null;
              },
              maxLines: 1,
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
              height: height*0.02,
            ),

            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Duration';
                }
                return null;
              },
              maxLines: 1,
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
              height: height*0.02,
            ),

            Container(

              width: width*2,
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
                items: <String>['Foreign Education Duration', '1year', '2year', '5year']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),

            SizedBox(
              height: height*0.02,
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
              height: height*0.02,
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
                        width: width*0.22,
                      ),
                      Text('Upload Certificate',style: Textstyle1Light18.appbartextstyle.copyWith(
                          fontSize: 16,color: Appcolors.grey1),),
                      SizedBox(
                        width: width*0.02,
                      ),
                      Image.asset('assets/Images/addIcon.png',scale: 3.5,color: Appcolors.grey1,),
                    ],
                  ),
                  onPressed: (){

                  }
              ),
            ),


            SizedBox(
              height: height*0.04,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: width*0.3),

                Stack(
                  children: [

                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Container(
                          width: width*0.17,
                          height: height*0.002,
                          color: Colors.white,
                        ),
                      ),
                    ),

                   /* Center(
                      child: SmoothPageIndicator(
                        controller: signupSelectpage,
                        count:  5,
                        effect:  SlideEffect(
                            spacing:  5.0,
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

                SizedBox(width: width*0.24),

                Text('Skip',style: Textstyle1Light18.appbartextstyle.copyWith(
                    color: Appcolors.grey4,fontSize: 16
                ),),
              ],
            ),

            SizedBox(
              height: height*0.08,
            ),

            Center(
              child: RaisedButton(
                  color: Appcolors.blue1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text('Confirm Details',style: Textstyle3Light18.appbartextstyle.copyWith(
                      fontSize: 14,color: Colors.white),),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => LandingPage()));
                  }
              ),
            ),

            Center(
              child: TextButton(
                onPressed: (){},
                child: Text('Go Back ',style: Textstyle1Light18.appbartextstyle.copyWith(
                    fontSize: 16,color: Appcolors.grey4),),),
            ),

            SizedBox(
              height: height*0.015,
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
        )
    );
  }
}
