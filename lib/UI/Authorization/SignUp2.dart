/*
import 'dart:io';

import 'package:hipoz/UI/Authorization/SignUp3.dart';
import 'package:hipoz/UI/Authorization/Utils/utils.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/Authorization/landingpage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class SignUp2 extends StatefulWidget {
  const SignUp2({Key? key}) : super(key: key);

  @override
  State<SignUp2> createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {

 */
/* late PageController signupSelectpage;*//*


  final format = DateFormat("dd-MM-yyyy");

  static var degree = 'Degree';
  static var study = 'Field of Study';
  static var work = 'Work Availability';
  static var institution = 'Scholarship Institution';

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
              width: width*0.9,
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
                items: <String>['Degree', 'B.E', 'B.Com']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),

            SizedBox(
              height: height*0.03,
            ),

            Container(

              width: width*0.9,
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
                items: <String>['Field of Study','Engineering', 'Accountant']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),


            SizedBox(
              height: height*0.03,
            ),

            TextFormField(

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter University name';
                }
                return null;
              },
              maxLines: 1,
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
              decoration: Inputdec1.inputDecoration.copyWith(
                hintText: 'University Name',
                hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                    fontSize: 15,color: Appcolors.grey2),
              ),
            ),


            SizedBox(
              height: height*0.03,
            ),

            DateTimeField(
              format: format,
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
              decoration: Inputdec1.inputDecoration.copyWith(
                suffixIcon: Icon(Icons.calendar_today_outlined,color: Colors.white,),
                hintText: 'Graduation Date',
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

            SizedBox(
              height: height*0.03,
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
              height: height*0.03,
            ),

            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Scholarship';
                }
                return null;
              },
              maxLines: 1,
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
              height: height*0.03,
            ),

            Container(

              width: width*0.9,
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
              height: height*0.03,
            ),

            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Scholarship';
                }
                return null;
              },
              textAlign: TextAlign.center,
              maxLines: 1,
              style: TextStyle(color: Colors.white),
              decoration: Inputdec1.inputDecoration.copyWith(
                suffixIcon: Icon(Icons.add,color: Colors.white,),
                hintText: 'Name of the scholarship',
                hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                    fontSize: 16,color: Appcolors.grey2),
              ),
            ),

            SizedBox(
              height: height*0.03,
            ),

            Container(

              width: width*0.9,
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
              height: height*0.03,
            ),

            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Scholarship';
                }
                return null;
              },
              maxLines: 1,
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
              height: height*0.03,
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
                        width: width*0.22,
                      ),
                      Text('Upload Certificate',style: Textstyle1Light18.appbartextstyle.copyWith(
                          fontSize: 16,color: Appcolors.blue1),),
                      SizedBox(
                        width: width*0.01,
                      ),
                      Image.asset('assets/Images/addIcon.png',scale: 3.5,),
                    ],
                  ),
                  onPressed: (){

                  }
              ),
            ),

            SizedBox(
              height: height*0.04,
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

                */
/*Center(
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
              height: height*0.08,
            ),

            Center(
              child: RaisedButton(
                  color: Appcolors.blue1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(Icons.keyboard_arrow_right_outlined,color: Colors.white,size: 30,),
                  onPressed: () async {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SignUp3(),
                      ),
                    );
                    */
/*setState(() {
                      Utils.signupSelectpage = "page3";
                    }
                    );*//*

                  }
              ),
            ),
            SizedBox(
              height: height*0.02,
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
    ),
    );
  }


}
*/
