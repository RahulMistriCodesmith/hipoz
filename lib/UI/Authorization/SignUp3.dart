import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:hipoz/UI/Authorization/Utils/utils.dart';
import 'package:hipoz/UI/Authorization/signup4.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/Authorization/landingpage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class SignUp3 extends StatefulWidget {
  const SignUp3({Key? key}) : super(key: key);

  @override
  State<SignUp3> createState() => _SignUp3State();
}

class _SignUp3State extends State<SignUp3> {

  final _formKey = GlobalKey<FormState>();

  /*late PageController signupSelectpage;*/

  final format = DateFormat("dd-MM-yyyy");

  static var language = 'Language';
  static var proficiency = 'Proficiency';
  static var salary = 'Salary Expectations';
  static var abroad = 'I would be willing to work abroad';

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

            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter job type';
                }
                return null;
              },
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

            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Interests';
                }
                return null;
              },
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

            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter location';
                }
                return null;
              },
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

            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Industry';
                }
                return null;
              },
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

            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Specialisation';
                }
                return null;
              },
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
                    ),*/

                  ],
                ),

                SizedBox(width: width*0.24),

                InkWell(

                  onTap: (){

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
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SignUp4(),
                      ),
                    );
                    /*setState(() {
                      Utils.signupSelectpage = "page4";
                    }
                    );*/
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
    )
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
