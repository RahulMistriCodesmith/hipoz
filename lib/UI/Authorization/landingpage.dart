// ignore_for_file: prefer_const_constructors, deprecated_member_use, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/Authorization/forgotpassword.dart';
import 'package:hipoz/UI/Authorization/signup.dart';
import 'package:hipoz/UI/Company/companydashboard.dart';
import 'package:hipoz/UI/Student/DashBoard/studentdashbord.dart';
import 'package:hipoz/UI/partner/partnersignin.dart';
class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  var selectedval = "student";
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Appcolors.brown2,
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Images/background.png'),
            fit: BoxFit.fill
          ),
        ),
        child: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.only(top: 44),
            child: Column(

              children: [
                Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Row(
                  children: [
                    Image.asset('assets/Images/hipozicon.png',width: 27.9,height: 32,),
                    SizedBox(
                      width: 270,
                    ),
                    InkWell(

                      onTap: (){
                        setState(() {

                          showModalBottomSheet(
                            isScrollControlled: true,
                            barrierColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(40),
                                    topLeft: Radius.circular(40)
                                ),
                              ),

                              context: context,
                              builder: (context){
                                return Wrap(
                                  children: [

                                    Container(
                                      width: width,
                                      height: height/1.16,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(40),
                                            topLeft: Radius.circular(40)
                                        ),
                                        image: DecorationImage(
                                            image: AssetImage('assets/Images/background.png'),
                                            fit: BoxFit.fill
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 32,left: 24,right: 24),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text('Sign in',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                    color: Colors.white,fontSize: 24
                                                ),),
                                                SizedBox(
                                                  width: width*0.63,
                                                ),
                                                Icon(Icons.clear,color: Colors.white,),
                                              ],
                                            ),

                                            SizedBox(
                                              height: 40,
                                            ),

                                            Text('Name or email address',
                                              style: Textstyle3Light18.appbartextstyle.copyWith(
                                                  color: Colors.white,fontSize: 16
                                              ),),

                                            SizedBox(
                                              height: 27,
                                            ),

                                            TextField(
                                              decoration: Inputdec1.inputDecoration.copyWith(
                                                hintText: 'Your name or email address',
                                              ),
                                            ),

                                            SizedBox(
                                              height: 40,
                                            ),

                                            Text('Password',
                                              style: Textstyle3Light18.appbartextstyle.copyWith(
                                                  color: Colors.white,fontSize: 16
                                              ),),

                                            SizedBox(
                                              height: 27,
                                            ),

                                            TextField(
                                              decoration: Inputdec1.inputDecoration.copyWith(
                                                hintText: 'Your password',
                                                suffixIcon: Icon(Icons.visibility_outlined,color: Colors.white,),
                                              ),
                                            ),

                                            SizedBox(
                                              height: 30,
                                            ),

                                            TextButton(
                                                onPressed: (){
                                                  Navigator.push(context,MaterialPageRoute(builder: (context) => ForgotPassword()));
                                                },
                                                child: Text('Forgot password?',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                    color: Colors.white,fontSize: 14),)
                                            ),

                                            SizedBox(
                                              height: 180,
                                            ),

                                            Container(
                                              width: width*0.9,
                                              child: RaisedButton (
                                                  color: Appcolors.blue1,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(100),
                                                  ),
                                                  child: Text('Submit',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                      color: Colors.white,fontSize: 16),
                                                  ),

                                                  onPressed: (){
                                                    Navigator.push(context,MaterialPageRoute(builder: (context) => StudentDashboard()));
                                                  }
                                              ),
                                            ),

                                            SizedBox(
                                              height: 26,
                                            ),

                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text('Don’t have an account?',
                                                  style: Textstyle1Light18.appbartextstyle.copyWith(
                                                      color: Colors.white,fontSize: 16
                                                  ),),
                                                TextButton(
                                                    onPressed: (){},
                                                    child: Text('Sign up',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                        color: Colors.white,fontSize: 16),)
                                                ),
                                              ],
                                            ),

                                          ],
                                        ),
                                      ),

                                    ),

                                  ],
                                );
                              });

                        });
                      },
                      
                      child: Text('Sign in',style: Textstyle1Light18.appbartextstyle.copyWith(
                          fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
                    )
                  ],
                ),
                ),

                SizedBox(
                  height: 164,
                ),

                RichText(
                  text: const TextSpan(
                    text: 'Hire',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Avenir',
                        fontSize: 40),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' High Quality',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'AvenirLTStd-Black',

                              fontSize: 40)
                      ),
                    ],
                  ),
                ),

                RichText(
                  text: const TextSpan(
                    text: 'Team',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Avenir',
                        fontSize: 40),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Members',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'AvenirLTStd-Black',
                              fontSize: 40)
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 24,
                ),
                
                Padding(
                  padding: const EdgeInsets.only(left: 24,right: 24,),
                  child: Text('hipoZ is the digital zone for top students, graduates and young professionals.Get access to exclusive benefits, invitations to hi-class events and top lectures.',
                  style: Textstyle1Light18.appbartextstyle.copyWith(
                      fontSize: 14,color: Colors.white),
                  ),
                ),

                SizedBox(
                  height: 47,
                ),
                
                RaisedButton(
                  color: Appcolors.blue1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text('Sign up',style: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Colors.white),),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                    }
                ),

                SizedBox(
                  height: 162,
                ),

                InkWell(

                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const PartnerSign()));
                  },

                  child: Text('Scroll for more',
                    style: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 14,color: Colors.white),
                  ),
                ),
                
                Icon(Icons.keyboard_arrow_down_rounded,color: Colors.white,),

                SizedBox(
                  height: 86.57,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 24,right: 24),
                  child: Text('HipoZ - High',
                    style: Textstyle3Light18.appbartextstyle.copyWith(
                        fontSize: 40,color: Colors.white),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 24,right: 24),
                  child: Text('Potential Zone',
                    style: Textstyle3Light18.appbartextstyle.copyWith(
                        fontSize: 40,color: Colors.white),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 24,right: 24,),
                  child: Text('hipoZ is the digital zone for top students, graduates and young professionals.Get access to exclusive benefits, invitations to hi-class events and top lectures.',
                    style: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 14,color: Colors.white),
                  ),
                ),

                SizedBox(
                  height: 40,
                ),

                Image.asset('assets/Images/postimage1.png'),

                SizedBox(
                  height: 40,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 24,right: 24),
                  child: Text('Get a HipoZ',
                    style: Textstyle3Light18.appbartextstyle.copyWith(
                        fontSize: 40,color: Colors.white),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 24,right: 24),
                  child: Text('Starter Package',
                    style: Textstyle3Light18.appbartextstyle.copyWith(
                        fontSize: 40,color: Colors.white),
                  ),
                ),

                SizedBox(
                  height: 24,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 24,right: 24,),
                  child: Text('hipoZ is the digital zone for top students, graduates and young professionals.Get access to exclusive benefits, invitations to hi-class events and top lectures.',
                    style: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 14,color: Colors.white),
                  ),
                ),

                SizedBox(
                  height: 40,
                ),

                Image.asset('assets/Images/postimage2.png'),

                SizedBox(
                  height: 24,
                ),

                Text('Contact Us',
                  style: Textstyle3Light18.appbartextstyle.copyWith(
                      fontSize: 24,color: Colors.white),
                ),

                SizedBox(
                  height: 24,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Row(
                    children: [

                      InkWell(
                        onTap: (){
                          setState(() {
                            selectedval = "student";
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 16,right: 16,top: 12,bottom: 12),
                          decoration: BoxDecoration(
                            color: selectedval == "student" ? Appcolors.blue1 :Appcolors.brown2,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Text('I’m a student',style: Textstyle1Light18.appbartextstyle.copyWith(
                              fontSize: 16,color: selectedval == "student"? Colors.white: Appcolors.grey2),),
                        ),
                      ),

                      SizedBox(
                        width: 12,
                      ),

                      InkWell(

                        onTap: (){
                          setState(() {
                            selectedval = "company";
                          });
                        },

                        child: Container(
                          padding: EdgeInsets.only(left: 16,right: 16,top: 12,bottom: 12),
                          decoration: BoxDecoration(
                            color: selectedval == "company" ? Appcolors.blue1 :Appcolors.brown2,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Text('I’m a company',style: Textstyle1Light18.appbartextstyle.copyWith(
                              fontSize: 16,color: selectedval == "company"? Colors.white: Appcolors.grey2),),
                        ),
                      ),

                    ],
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                selectedval == "student"

                ? Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Appcolors.brown2,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: TextField(
                            decoration: Inputdec2.inputDecoration.copyWith(
                              hintText: 'Email address',
                            ),
                          ),

                        ),

                        SizedBox(
                          height: 16,
                        ),

                        Container(
                          decoration: BoxDecoration(
                            color: Appcolors.brown2,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: TextField(
                            maxLines: 6,
                            decoration: Inputdec2.inputDecoration.copyWith(
                              hintText: 'Message',
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 28,
                        ),
                        
                        Container(
                          width: width*0.9,
                          child: RaisedButton(
                            color: Appcolors.blue1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Text('Submit',style: Textstyle3Light18.appbartextstyle.copyWith(
                                color: Colors.white,fontSize: 16),
                              ),

                              onPressed: (){
                                Navigator.push(context,MaterialPageRoute(builder: (context) => StudentDashboard()));
                              }
                          ),
                        ),

                      ],
                    ),
                  ),
                )

                : Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Appcolors.brown2,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: TextField(
                            decoration: Inputdec2.inputDecoration.copyWith(
                              hintText: 'Email address',
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 16,
                        ),

                        Container(
                          decoration: BoxDecoration(
                            color: Appcolors.brown2,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: TextField(
                            maxLines: 6,
                            decoration: Inputdec2.inputDecoration.copyWith(
                              counterStyle: TextStyle(color: Appcolors.grey1),
                              hintText: 'Message',
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 28,
                        ),

                        Container(
                          width: width*0.9,
                          child: RaisedButton(
                              color: Appcolors.blue1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Text('Submit',style: Textstyle3Light18.appbartextstyle.copyWith(
                                  color: Colors.white,fontSize: 16,),
                              ),

                              onPressed: (){
                                Navigator.push(context,MaterialPageRoute(builder: (context) => CompanyDashboard()));
                              }
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 28,bottom: 40),
                  child: Divider(
                    color: Appcolors.grey1,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Row(
                    children: [
                      Image.asset('assets/Images/hipozicon.png',width: 27.9,height: 32,),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Austria / Vienna',style: Textstyle2Light18.appbartextstyle.copyWith(
                              color: Appcolors.grey2,fontSize: 16
                            ),),
                            Text('hipoZ',style: Textstyle2Light18.appbartextstyle.copyWith(
                                color: Appcolors.grey2,fontSize: 16
                            ),),
                            Text('GmbH',style: Textstyle2Light18.appbartextstyle.copyWith(
                                color: Appcolors.grey2,fontSize: 16
                            ),),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 50,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('+43 69911 51 11 11',style: Textstyle2Light18.appbartextstyle.copyWith(
                                color: Appcolors.grey2,fontSize: 16
                            ),),

                            SizedBox(
                              height: 20,
                            ),

                            Text('info@hipoz.com',style: Textstyle2Light18.appbartextstyle.copyWith(
                                color: Appcolors.grey2,fontSize: 16
                            ),),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),

                SizedBox(
                  height: 61,
                ),

                Text('© 2021 HipoZ. All rights reserved.',style: Textstyle2Light18.appbartextstyle.copyWith(
                    color: Appcolors.grey2,fontSize: 14),),

                SizedBox(height: 25,)

              ],
            ),
          ),
        ),
      ),

    );
  }
}


