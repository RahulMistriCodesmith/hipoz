// ignore_for_file: deprecated_member_use, prefer_const_constructors, avoid_print, prefer_interpolation_to_compose_strings, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_element, depend_on_referenced_packages

import 'dart:io';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:hipoz/UI/Authorization/Utils/utils.dart';
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

  bool collapsed = true;
  bool collapsed1 = true;
  bool collapsed2 = true;
  bool collapsed3 = true;
  bool collapsed4 = true;
  bool collapsed5 = true;
  bool collapsed6 = true;
  bool collapsed7 = true;
  bool collapsed8 = true;
  bool collapsed9 = true;
  bool collapsed10 = true;
  bool collapsed11 = true;

  final _formKey = GlobalKey<FormState>();

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
  static var duration = 'Employment Duration';
  static var abroad1 = 'I have studied abroad';
  static var abroad2 = 'Foreign Education Duration';

  final controller = PageController(initialPage: 0,viewportFraction: 0.8, keepPage: true);

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
      body: Column(
        children: [

          Utils.signupSelectpage == "page0"
          ? Expanded(

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

                          Center(
                            child: AnimatedSmoothIndicator(
                              activeIndex: 0,
                              count: 5,
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
                          ),

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
                            /*Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) => const SignUp1(),),);*/
                            setState(() {
                              Utils.signupSelectpage = "page1";
                            }
                            );

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
         )
          : SizedBox(),

          Utils.signupSelectpage == "page1"
          ? Expanded(
              child: SingleChildScrollView(

                child: Form(
                  key: _formKey,
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
                              width: 167,
                             /* decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  border: Border.all(color: Appcolors.grey1)
                              ),*/
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
                              width: 167,
                              height: height*0.072,
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
                              width: 167,

                              child:  TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter pincode';
                                  }
                                  return null;
                                },
                                maxLines: 1,
                                textAlign: TextAlign.center,
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
                              width: 167,
                              height: height*0.072,
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
                              width: 167,

                              child: TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Region';
                                  }
                                  return null;
                                },
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                                decoration: Inputdec1.inputDecoration.copyWith(
                                  hintText: "Region",
                                ),
                              ),
                            ),

                            SizedBox(
                              width: 20,
                            ),

                            Container(
                              width: 167,
                              height: height*0.072,
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
                                setState(() {
                                  Utils.signupSelectpage = "page2";
                                });

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

                            Center(
                              child: AnimatedSmoothIndicator(
                                activeIndex: 1,
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
                            ),

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
                ),
              ))
          : SizedBox(),

          Utils.signupSelectpage == "page2"
          ? Expanded(
            child: SingleChildScrollView(

              child: Padding(
                padding: const EdgeInsets.only(left: 24,right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: width*0.9,
                      height: height*0.072,
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
                        value: degree,
                        dropdownColor: Appcolors.brown1,
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(Icons.arrow_drop_down,),
                        ),
                        elevation: 16,
                        style: const TextStyle(color: Colors.grey,fontSize: 16),
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
                      height: height*0.072,
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
                        style: const TextStyle(color: Colors.grey,fontSize: 16),
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
                            fontSize: 16,color: Appcolors.grey2),
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

                    InkWell(

                      onTap: (){
                        setState(() {
                          collapsed = !collapsed;
                        });
                      },

                      child: AnimatedContainer(
                        duration: Duration(microseconds: 50),
                        width: width*0.9,
                        height: height*0.07,
                        decoration: BoxDecoration(
                          border: Border.all(color: Appcolors.grey1),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: width*0.27,),
                            Text('Scholarship',style: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 16,color: Appcolors.grey2),),

                            SizedBox(width: width*0.23,),

                            Icon(Icons.add,color: Colors.white,),
                          ],
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: width*0.9,
                      height: collapsed ? 0 : height*0.072,
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.grey1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: width*0.27,),
                          Text('Scholarship',style: Textstyle1Light18.appbartextstyle.copyWith(
                              fontSize: 16,color: Appcolors.grey2),),

                          SizedBox(width: width*0.23,),

                        ],
                      ),
                    ),

                   /* TextFormField(
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
                            fontSize: 16,color: Appcolors.grey2),
                      ),
                    ),*/

                    SizedBox(
                      height: height*0.03,
                    ),

                    Container(
                      width: width*0.9,
                      height: height*0.072,
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
                        value: work,
                        dropdownColor: Appcolors.brown1,
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(Icons.arrow_drop_down,),
                        ),
                        elevation: 16,
                        style: const TextStyle(color: Colors.grey,fontSize: 16),
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

                    InkWell(
                      onTap: (){
                        setState(() {
                          collapsed1 = !collapsed1;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(microseconds: 50),
                        width: width*0.9,
                        height: height*0.07,
                        decoration: BoxDecoration(
                          border: Border.all(color: Appcolors.grey1),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: width*0.2,),
                            Text('Name of the scholarship',style: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 16,color: Appcolors.grey2),),

                            SizedBox(width: width*0.1,),

                            Icon(Icons.add,color: Colors.white,),
                          ],
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: width*0.9,
                      height: collapsed1 ? 0 : height*0.072,
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.grey1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: width*0.2,),
                          Text('Name of the scholarship',style: Textstyle1Light18.appbartextstyle.copyWith(
                              fontSize: 16,color: Appcolors.grey2),),

                          SizedBox(width: width*0.1,),

                        ],
                      ),
                    ),

                    /*TextFormField(
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
                        hintText: 'Name of the scholarship',
                        hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                            fontSize: 16,color: Appcolors.grey2),
                      ),
                    ),*/

                    SizedBox(
                      height: height*0.03,
                    ),

                    Container(
                      width: width*0.9,
                      height: height*0.072,
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
                        value: institution,
                        dropdownColor: Appcolors.brown1,
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(Icons.arrow_drop_down,),
                        ),
                        elevation: 16,
                        style: const TextStyle(color: Colors.grey,fontSize: 16),
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

                    InkWell(
                      onTap: (){
                        setState(() {
                          collapsed2 = !collapsed2;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: width*0.9,
                        height: height*0.07,
                        decoration: BoxDecoration(
                          border: Border.all(color: Appcolors.grey1),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: width*0.2,),
                            Text('Scholarship Received on',style: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 16,color: Appcolors.grey2),),

                            SizedBox(width: width*0.1,),

                            Icon(Icons.add,color: Colors.white,),
                          ],
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: width*0.9,
                      height: collapsed2 ? 0 : height*0.072,
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.grey1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: width*0.2,),
                          Text('Scholarship Received on',style: Textstyle1Light18.appbartextstyle.copyWith(
                              fontSize: 16,color: Appcolors.grey2),),

                          SizedBox(width: width*0.1,),

                        ],
                      ),
                    ),

                    /*TextFormField(
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
                        hintText: 'Scholarship Received on',
                        hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                            fontSize: 16,color: Appcolors.grey2),
                      ),
                    ),*/

                    SizedBox(
                      height: height*0.03,
                    ),

                    Container(
                      height: height*0.07,
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

                        Center(
                          child: AnimatedSmoothIndicator(
                            activeIndex: 2,
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
                        ),

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
                            /*Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SignUp3(),),);*/
                            setState(() {
                              Utils.signupSelectpage = "page3";
                            }
                            );
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
            ),)
          : SizedBox(),

          Utils.signupSelectpage == "page3"
          ? Expanded(
            child: SingleChildScrollView(

            child: Padding(
              padding: const EdgeInsets.only(left: 24,right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(
                    height: height*0.02,
                  ),

                  Container(
                    width: 100,
                    height: 100,
                    child: _imageFile == null

                        ? Image.asset('assets/Images/iconpdf.png',color: Colors.white,scale: 2,)

                        : Image.file(


                      _imageFile!,

                      fit: BoxFit.fitWidth,

                    ),
                  ),

                  SizedBox(
                    height: height*0.025,
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
                        onPressed: (){
                          _getFromGallery();
                        }
                    ),
                  ),

                  SizedBox(
                    height: height*0.035,
                  ),

                  InkWell(

                    onTap: (){
                      setState(() {
                        collapsed3 = !collapsed3;
                      });
                    },

                    child: AnimatedContainer(
                      duration: Duration(microseconds: 50),
                      width: width*0.9,
                      height: height*0.07,
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.grey1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: width*0.29,),
                          Text('Job Type',style: Textstyle1Light18.appbartextstyle.copyWith(
                              fontSize: 16,color: Appcolors.grey2),),

                          SizedBox(width: width*0.23,),

                          Icon(Icons.add,color: Colors.white,),
                        ],
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: width*0.9,
                    height: collapsed3 ? 0 : height*0.072,
                    decoration: BoxDecoration(
                      border: Border.all(color: Appcolors.grey1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: width*0.27,),
                        Text('Job Type',style: Textstyle1Light18.appbartextstyle.copyWith(
                            fontSize: 16,color: Appcolors.grey2),),

                        SizedBox(width: width*0.23,),

                      ],
                    ),
                  ),


                  SizedBox(
                    height: height*0.02,
                  ),

                  InkWell(

                    onTap: (){
                      setState(() {
                        collapsed4 = !collapsed4;
                      });
                    },

                    child: AnimatedContainer(
                      duration: Duration(microseconds: 50),
                      width: width*0.9,
                      height: height*0.07,
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.grey1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: width*0.29,),
                          Text('Interests',style: Textstyle1Light18.appbartextstyle.copyWith(
                              fontSize: 16,color: Appcolors.grey2),),

                          SizedBox(width: width*0.26,),

                          Icon(Icons.add,color: Colors.white,),
                        ],
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: width*0.9,
                    height: collapsed4 ? 0 : height*0.072,
                    decoration: BoxDecoration(
                      border: Border.all(color: Appcolors.grey1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: width*0.27,),
                        Text('Interests',style: Textstyle1Light18.appbartextstyle.copyWith(
                            fontSize: 16,color: Appcolors.grey2),),

                        SizedBox(width: width*0.23,),

                      ],
                    ),
                  ),

                  SizedBox(
                    height: height*0.02,
                  ),

                  InkWell(

                    onTap: (){
                      setState(() {
                        collapsed5 = !collapsed5;
                      });
                    },

                    child: AnimatedContainer(
                      duration: Duration(microseconds: 50),
                      width: width*0.9,
                      height: height*0.07,
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.grey1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: width*0.2,),
                          Text('Company Location',style: Textstyle1Light18.appbartextstyle.copyWith(
                              fontSize: 16,color: Appcolors.grey2),),

                          SizedBox(width: width*0.17,),

                          Icon(Icons.add,color: Colors.white,),
                        ],
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: width*0.9,
                    height: collapsed5 ? 0 : height*0.072,
                    decoration: BoxDecoration(
                      border: Border.all(color: Appcolors.grey1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: width*0.15,),
                        Text('Company Location',style: Textstyle1Light18.appbartextstyle.copyWith(
                            fontSize: 16,color: Appcolors.grey2),),

                        SizedBox(width: width*0.15,),

                      ],
                    ),
                  ),


                  SizedBox(
                    height: height*0.02,
                  ),

                  InkWell(

                    onTap: (){
                      setState(() {
                        collapsed6 = !collapsed6;
                      });
                    },

                    child: AnimatedContainer(
                      duration: Duration(microseconds: 50),
                      width: width*0.9,
                      height: height*0.07,
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.grey1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: width*0.3,),
                          Text('Industry',style: Textstyle1Light18.appbartextstyle.copyWith(
                              fontSize: 16,color: Appcolors.grey2),),

                          SizedBox(width: width*0.27,),

                          Icon(Icons.add,color: Colors.white,),
                        ],
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: width*0.9,
                    height: collapsed6 ? 0 : height*0.072,
                    decoration: BoxDecoration(
                      border: Border.all(color: Appcolors.grey1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: width*0.25,),
                        Text('Industry',style: Textstyle1Light18.appbartextstyle.copyWith(
                            fontSize: 16,color: Appcolors.grey2),),

                        SizedBox(width: width*0.27,),

                      ],
                    ),
                  ),

                  SizedBox(
                    height: height*0.02,
                  ),

                  InkWell(

                    onTap: (){
                      setState(() {
                        collapsed7 = !collapsed7;
                      });
                    },

                    child: AnimatedContainer(
                      duration: Duration(microseconds: 50),
                      width: width*0.9,
                      height: height*0.07,
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.grey1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: width*0.26,),
                          Text('Specialisation',style: Textstyle1Light18.appbartextstyle.copyWith(
                              fontSize: 16,color: Appcolors.grey2),),

                          SizedBox(width: width*0.23,),

                          Icon(Icons.add,color: Colors.white,),
                        ],
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: width*0.9,
                    height: collapsed7 ? 0 : height*0.072,
                    decoration: BoxDecoration(
                      border: Border.all(color: Appcolors.grey1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: width*0.25,),
                        Text('Specialisation',style: Textstyle1Light18.appbartextstyle.copyWith(
                            fontSize: 16,color: Appcolors.grey2),),

                        SizedBox(width: width*0.27,),

                      ],
                    ),
                  ),

                  SizedBox(
                    height: height*0.02,
                  ),

                  Row(
                    children: [
                      Container(
                        width: 167,
                        height: height*0.072,
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
                          value: language,
                          dropdownColor: Appcolors.brown1,
                          icon: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: const Icon(Icons.arrow_drop_down,),
                          ),
                          elevation: 16,
                          style: const TextStyle(color: Colors.grey,fontSize: 16),
                          onChanged: (String? newValue) {
                            language = newValue!;
                          },
                          items: <String>['Language', 'English', 'Hindi', 'Gujarati']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),

                      SizedBox(
                        width: width*0.07,
                      ),

                      Container(
                        width: 167,
                        height: height*0.072,
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
                          value: proficiency,
                          dropdownColor: Appcolors.brown1,
                          icon: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: const Icon(Icons.arrow_drop_down,),
                          ),
                          elevation: 16,
                          style: const TextStyle(color: Colors.grey,fontSize: 16),
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
                    height: height*0.02,
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
                    height: height*0.02,
                  ),

                  Container(
                    width: width*2,
                    height: height*0.072,
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
                      value: salary,
                      dropdownColor: Appcolors.brown1,
                      icon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: const Icon(Icons.arrow_drop_down,),
                      ),
                      elevation: 16,
                      style: const TextStyle(color: Colors.grey,fontSize: 16),
                      onChanged: (String? newValue) {
                        salary = newValue!;
                      },
                      items: <String>['Salary Expectations', '10,000 - 15,000', '15,000 - 20,000']
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
                    height: height*0.072,
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
                      value: abroad,
                      dropdownColor: Appcolors.brown1,
                      icon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: const Icon(Icons.arrow_drop_down,),
                      ),
                      elevation: 16,
                      style: const TextStyle(color: Colors.grey,fontSize: 16),
                      onChanged: (String? newValue) {
                        abroad = newValue!;
                      },
                      items: <String>['I would be willing to work abroad' ,'yes', 'no']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
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
                                width: width*0.2,
                                height: height*0.002,
                                color: Colors.white,
                              ),
                            ),
                          ),

                          Center(
                            child: AnimatedSmoothIndicator(
                              activeIndex: 3,
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
                          ),

                        ],
                      ),

                      SizedBox(width: width*0.24),

                      InkWell(

                        onTap: (){
                          setState(() {
                            Utils.signupSelectpage = "page4";
                          });
                        },

                        child: Text('Skip',style: Textstyle1Light18.appbartextstyle.copyWith(
                            color: Appcolors.grey4,fontSize: 16
                        ),),
                      ),
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
                        onPressed: () async {
                          /*Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SignUp4(),),);*/
                          setState(() {
                            Utils.signupSelectpage = "page4";
                          }
                          );
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
          ),)
          : SizedBox(),

          Utils.signupSelectpage == "page4"
          ? Expanded(
            child: SingleChildScrollView(

              child: Padding(
                padding: const EdgeInsets.only(left: 24,right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      width: width*2,
                      height: height*0.072,
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
                        value: working,
                        dropdownColor: Appcolors.brown1,
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(Icons.arrow_drop_down,),
                        ),
                        elevation: 16,
                        style: const TextStyle(color: Colors.grey,fontSize: 16),
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
                      height: height*0.072,
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
                        value: job,
                        dropdownColor: Appcolors.brown1,
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(Icons.arrow_drop_down,),
                        ),
                        elevation: 16,
                        style: const TextStyle(color: Colors.grey,fontSize: 16),
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
                      height: height*0.072,
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
                        value: Employment,
                        dropdownColor: Appcolors.brown1,
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(Icons.arrow_drop_down,),
                        ),
                        elevation: 16,
                        style: const TextStyle(color: Colors.grey,fontSize: 16),
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

                    InkWell(

                      onTap: (){
                        setState(() {
                          collapsed8 = !collapsed8;
                        });
                      },

                      child: AnimatedContainer(
                        duration: Duration(microseconds: 50),
                        width: width*0.9,
                        height: height*0.07,
                        decoration: BoxDecoration(
                          border: Border.all(color: Appcolors.grey1),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: width*0.26,),
                            Text('Employer',style: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 16,color: Appcolors.grey2),),

                            SizedBox(width: width*0.25,),

                            Icon(Icons.add,color: Colors.white,),
                          ],
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: width*0.9,
                      height: collapsed8 ? 0 : height*0.072,
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.grey1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: width*0.25,),
                          Text('Employer',style: Textstyle1Light18.appbartextstyle.copyWith(
                              fontSize: 16,color: Appcolors.grey2),),

                          SizedBox(width: width*0.27,),

                        ],
                      ),
                    ),

                    SizedBox(
                      height: height*0.02,
                    ),

                    Container(
                      width: width*2,
                      height: height*0.072,
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
                        value: duration,
                        dropdownColor: Appcolors.brown1,
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(Icons.arrow_drop_down,),
                        ),
                        elevation: 16,
                        style: const TextStyle(color: Colors.grey,fontSize: 16),
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
                      height: height*0.072,
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
                        value: abroad1,
                        dropdownColor: Appcolors.brown1,
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(Icons.arrow_drop_down,),
                        ),
                        elevation: 16,
                        style: const TextStyle(color: Colors.grey,fontSize: 16),
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

                    InkWell(

                      onTap: (){
                        setState(() {
                          collapsed9 = !collapsed9;
                        });
                      },

                      child: AnimatedContainer(
                        duration: Duration(microseconds: 50),
                        width: width*0.9,
                        height: height*0.07,
                        decoration: BoxDecoration(
                          border: Border.all(color: Appcolors.grey1),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: width*0.2,),
                            Text('Studied abroad name',style: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 16,color: Appcolors.grey2),),

                            SizedBox(width: width*0.15,),

                            Icon(Icons.add,color: Colors.white,),
                          ],
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: width*0.9,
                      height: collapsed9 ? 0 : height*0.072,
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.grey1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text('Studied abroad name',style: Textstyle1Light18.appbartextstyle.copyWith(
                            fontSize: 16,color: Appcolors.grey2),),
                      ),
                    ),

                    SizedBox(
                      height: height*0.02,
                    ),

                    InkWell(

                      onTap: (){
                        setState(() {
                          collapsed10 = !collapsed10;
                        });
                      },

                      child: AnimatedContainer(
                        duration: Duration(microseconds: 50),
                        width: width*0.9,
                        height: height*0.07,
                        decoration: BoxDecoration(
                          border: Border.all(color: Appcolors.grey1),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: width*0.27,),
                            Text('University',style: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 16,color: Appcolors.grey2),),

                            SizedBox(width: width*0.27,),

                            Icon(Icons.add,color: Colors.white,),
                          ],
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: width*0.9,
                      height: collapsed10 ? 0 : height*0.072,
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.grey1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text('University',style: Textstyle1Light18.appbartextstyle.copyWith(
                            fontSize: 16,color: Appcolors.grey2),),
                      ),
                    ),

                    SizedBox(
                      height: height*0.02,
                    ),

                    InkWell(

                      onTap: (){
                        setState(() {
                          collapsed11 = !collapsed11;
                        });
                      },

                      child: AnimatedContainer(
                        duration: Duration(microseconds: 50),
                        width: width*0.9,
                        height: height*0.07,
                        decoration: BoxDecoration(
                          border: Border.all(color: Appcolors.grey1),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: width*0.15,),
                            Text('Foreign Education Duration',style: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 16,color: Appcolors.grey2),),

                            SizedBox(width: width*0.1,),

                            Icon(Icons.add,color: Colors.white,),
                          ],
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: width*0.9,
                      height: collapsed11 ? 0 : height*0.072,
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.grey1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text('Foreign Education Duration',style: Textstyle1Light18.appbartextstyle.copyWith(
                            fontSize: 16,color: Appcolors.grey2),),
                      ),
                    ),

                    SizedBox(
                      height: height*0.02,
                    ),

                    Container(
                      width: width*2,
                      height: height*0.072,
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
                        value: abroad2,
                        dropdownColor: Appcolors.brown1,
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(Icons.arrow_drop_down,),
                        ),
                        elevation: 16,
                        style: const TextStyle(color: Colors.grey,fontSize: 16),
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
                      height: height*0.072,
                      alignment: Alignment.center,
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
                          onPressed: (){}
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

                            Center(
                              child: AnimatedSmoothIndicator(
                                activeIndex: 4,
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
                            ),

                          ],
                        ),

                        SizedBox(width: width*0.24),

                        InkWell(

                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => LandingPage()));
                          },

                          child: Text('Skip',style: Textstyle1Light18.appbartextstyle.copyWith(
                              color: Appcolors.grey4,fontSize: 16
                          ),),
                        ),
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
            ),)
          : SizedBox(),

        ],
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

