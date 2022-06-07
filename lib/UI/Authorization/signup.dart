// ignore_for_file: deprecated_member_use, prefer_const_constructors, avoid_print, prefer_interpolation_to_compose_strings, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_element

import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
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

  late PageController pageview;

   @override
   void initState() {
     pageview = PageController(initialPage: 0);
     super.initState();
   }

  @override
  void dispose(){
    pageview.dispose();

    super.dispose();
  }


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

   File? imageFile;
   File? get XFile => imageFile;

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
      body: Form(

        key: _formKey,

        child: PageView.builder(
          itemCount: 4,
          itemBuilder: (context, int index) => PageView(
              /*physics: NeverScrollableScrollPhysics(),*/
              controller: pageview,
              onPageChanged: (index) {
                print('page ${index + 1}');
              },
              children: [
                SingleChildScrollView(

                  child: Container(
                    width: width,
                    height: height,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20,left: 24,right: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextField(
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
                            height: 42,
                          ),

                          TextField(
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
                            height: 42,
                          ),

                          TextField(
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
                            height: 42,
                          ),

                          TextField(
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
                            height: height*0.04,
                          ),

                          SmoothPageIndicator(
                            controller: pageview,
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

                          SizedBox(
                            height: height*0.08,
                          ),

                          RaisedButton(
                            color: Appcolors.blue1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(Icons.keyboard_arrow_right_outlined,color: Colors.white,size: 30,),
                            onPressed: () async {
                              pageview.nextPage(
                                duration: Duration(seconds: 1),
                                  curve: Curves.easeInOut);
                            }
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
                                onPressed: (){},
                                child: Text('Sign In',style: Textstyle3Light18.appbartextstyle.copyWith(
                                    fontSize: 16,color: Colors.white),),)
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

                SingleChildScrollView(

                  child: Container(
                    width: width,
                    height: height*1.05,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24,right: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Appcolors.blue1,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child:  imageFile == null

                                ? InkWell(

                              onTap: (){
                                _getFromGallery();
                              },
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Appcolors.blue1,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            )

                                : Image.file(


                              imageFile!,

                              fit: BoxFit.cover,

                            ),
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
                                          onTap: () => _selectDate(context),
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
                            height: height*0.04,
                          ),

                          Row(
                            children: [
                              Container(
                                width: 165,

                                child: TextFormField(
                                  maxLines: 1,
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
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
                                padding: EdgeInsets.only(left: 48,top: 5,bottom: 5),
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
                                  style: const TextStyle(color: Colors.grey,fontSize: 16),
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
                            height: height*0.03,
                          ),

                          Row(
                            children: [
                              Container(
                                width: 165,

                                child: TextFormField(
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
                                padding: EdgeInsets.only(left: 40,top: 5,bottom: 5),
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
                            height: height*0.04,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Skip',style: Textstyle1Light18.appbartextstyle.copyWith(
                                color: Appcolors.grey4,fontSize: 16
                              ),),
                            ],
                          ),

                          Center(
                            child: SmoothPageIndicator(
                              controller: pageview,
                              count:  5,
                              effect:  SlideEffect(
                                  spacing:  8.0,
                                  radius:  14.0,
                                  dotWidth:  10.0,
                                  dotHeight:  10.0,
                                  paintStyle:  PaintingStyle.fill,
                                  strokeWidth:  1.5,
                                  dotColor:  Colors.white,
                                  activeDotColor:  Appcolors.blue1
                              ),
                            ),
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
                                  pageview.nextPage(
                                      duration: Duration(seconds: 1),
                                      curve: Curves.easeInOut);
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
                                onPressed: (){},
                                child: Text('Sign In',style: Textstyle3Light18.appbartextstyle.copyWith(
                                    fontSize: 16,color: Colors.white),),)
                            ],
                          ),


                        ],
                      ),
                    ),
                  ),
                ),

                SingleChildScrollView(

                  child: Container(
                    width: width,
                    height: height*1.3,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24,right: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 140),
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
                            height: height*0.03,
                          ),

                          Container(
                            padding: EdgeInsets.only(left: 130),
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
                            height: height*0.03,
                          ),

                          TextField(
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

                          InkWell(

                            onTap: (){_selectDate(context);},

                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                              decoration: Inputdec1.inputDecoration.copyWith(
                                suffixIcon: InkWell(
                                    onTap: () => _selectDate(context),

                                    child: Icon(Icons.calendar_today_outlined,color: Colors.white,)),
                                hintText: 'Graduation Date',
                                hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                                    fontSize: 15,color: Appcolors.grey2),
                              ),
                            ),
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

                          TextField(
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
                            padding: EdgeInsets.only(left: 120),
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

                          TextField(
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
                            padding: EdgeInsets.only(left: 100),
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

                          TextField(
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

                          imageFile == null

                              ? Container(
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
                                  _getFromGallery();
                                }
                            ),
                          )

                              : Image.file(


                            imageFile!,

                            fit: BoxFit.fitWidth,

                          ),



                          SizedBox(
                            height: height*0.04,
                          ),

                          Center(
                            child: SmoothPageIndicator(
                              controller: pageview,
                              count:  5,
                              effect:  SlideEffect(
                                  spacing:  8.0,
                                  radius:  14.0,
                                  dotWidth:  10.0,
                                  dotHeight:  10.0,
                                  paintStyle:  PaintingStyle.fill,
                                  strokeWidth:  1.5,
                                  dotColor:  Colors.white,
                                  activeDotColor:  Appcolors.blue1
                              ),
                            ),
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
                                  pageview.nextPage(
                                      duration: Duration(seconds: 1),
                                      curve: Curves.easeInOut);
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
                                onPressed: (){},
                                child: Text('Sign In',style: Textstyle3Light18.appbartextstyle.copyWith(
                                    fontSize: 16,color: Colors.white),),)
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

                SingleChildScrollView(

                  child: Container(
                    width: width,
                    height: height*1.25,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24,right: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/Images/iconpdf.png',color: Colors.white,scale: 2,),

                          SizedBox(
                            height: height*0.02,
                          ),

                          imageFile == null

                              ? Container(
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
                          )

                              : Image.file(


                            imageFile!,

                            fit: BoxFit.fitWidth,

                          ),

                          SizedBox(
                            height: height*0.035,
                          ),

                          TextField(
                            maxLines: 1,
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
                            height: height*0.02,
                          ),

                          TextField(
                            maxLines: 1,
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
                            height: height*0.02,
                          ),

                          TextField(
                            maxLines: 1,
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
                            height: height*0.02,
                          ),

                          TextField(
                            maxLines: 1,
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
                            height: height*0.02,
                          ),

                          TextField(
                            maxLines: 1,
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
                            height: height*0.02,
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
                                width: width*0.07,
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
                            height: height*0.02,
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

                          SizedBox(
                            height: height*0.04,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: width*0.3),
                              SmoothPageIndicator(
                                controller: pageview,
                                count:  5,
                                effect:  SlideEffect(
                                    spacing:  8.0,
                                    radius:  14.0,
                                    dotWidth:  10.0,
                                    dotHeight:  10.0,
                                    paintStyle:  PaintingStyle.fill,
                                    strokeWidth:  1.5,
                                    dotColor:  Colors.white,
                                    activeDotColor:  Appcolors.blue1
                                ),
                              ),

                              SizedBox(width: width*0.24),

                              Text('Skip',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  color: Appcolors.grey4,fontSize: 16
                              ),),
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
                                  pageview.nextPage(
                                      duration: Duration(seconds: 1),
                                      curve: Curves.easeInOut);
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
                                onPressed: (){},
                                child: Text('Sign In',style: Textstyle3Light18.appbartextstyle.copyWith(
                                    fontSize: 16,color: Colors.white),),)
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

                SingleChildScrollView(

                  child: Container(
                    width: width,
                    height: height*1.45,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24,right: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            padding: EdgeInsets.only(left: 90),
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
                            height: height*0.02,
                          ),

                          Container(
                            padding: EdgeInsets.only(left: 135),
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
                            height: height*0.02,
                          ),

                          Container(
                            padding: EdgeInsets.only(left: 100),
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
                            height: height*0.02,
                          ),

                          TextField(
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
                            padding: EdgeInsets.only(left: 100),
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
                            padding: EdgeInsets.only(left: 100),
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
                            height: height*0.02,
                          ),

                          TextField(
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

                          TextField(
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

                          TextField(
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
                            padding: EdgeInsets.only(left: 90),
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

                          imageFile == null

                              ? Container(
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
                                  _getFromGallery();
                                }
                            ),
                          )

                              : Image.file(


                            imageFile!,

                            fit: BoxFit.fitWidth,

                          ),


                          SizedBox(
                            height: height*0.04,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: width*0.3),
                              SmoothPageIndicator(
                                controller: pageview,
                                count:  5,
                                effect:  SlideEffect(
                                    spacing:  8.0,
                                    radius:  14.0,
                                    dotWidth:  10.0,
                                    dotHeight:  10.0,
                                    paintStyle:  PaintingStyle.fill,
                                    strokeWidth:  1.5,
                                    dotColor:  Colors.white,
                                    activeDotColor:  Appcolors.blue1
                                ),
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
                                onPressed: ()  {

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
                                onPressed: (){},
                                child: Text('Sign In',style: Textstyle3Light18.appbartextstyle.copyWith(
                                    fontSize: 16,color: Colors.white),),)
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

        ),
      ),
    );
  }

  _getFromGallery() async {
    PickedFile pickedFile =  ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    ) as PickedFile;
  }

}

