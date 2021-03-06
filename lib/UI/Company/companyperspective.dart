// ignore_for_file: deprecated_member_use, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
class CompanyPerspective extends StatefulWidget {
  const CompanyPerspective({Key? key}) : super(key: key);

  @override
  State<CompanyPerspective> createState() => _CompanyPerspectiveState();
}

class _CompanyPerspectiveState extends State<CompanyPerspective> {
  var selectedval = "about";
  final double circleRadius = 120.0;


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Appcolors.greylight,
      body: SingleChildScrollView(

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[

                  Padding(
                    padding:
                    EdgeInsets.only(top: 100 ,left: 20,right: 20),  ///here we create space for the circle avatar to get ut of the box
                    child: Container(
                      height: 270.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,

                      ),
                      width: double.infinity,
                      child: Padding(
                          padding: const EdgeInsets.only(top: 65.0, bottom: 15.0),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: circleRadius/2,),

                              Text('Olivia Jansen', style: Textstyle3Light18.appbartextstyle.copyWith(
                                  fontSize: 24,fontWeight: FontWeight.w800,color: Appcolors.brown1
                              )),
                              Text('Master of Digital Marketing', style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 14,fontWeight: FontWeight.w500,color: Appcolors.grey2
                              )),

                              SizedBox(height: 4.72,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.school_outlined,color: Appcolors.grey2,),

                                  SizedBox(width: 6,),

                                  Text('University of California', style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 14,fontWeight: FontWeight.w500,color: Appcolors.grey2
                                  )),
                                ],
                              ),

                              SizedBox(height: 4.72,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.place_outlined,color: Appcolors.grey2,),

                                  SizedBox(width: 6,),

                                  Text('California, US', style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 14,fontWeight: FontWeight.w500,color: Appcolors.grey2
                                  )),
                                ],
                              ),

                            ],
                          )
                      ),
                    ),
                  ),



                  Image.asset('assets/Images/postimage4.png'),

                  ///Image Avatar
                  Padding(
                    padding: const EdgeInsets.only(top: 90),
                    child: Container(
                      width: circleRadius,
                      height: circleRadius,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white

                      ),
                      child: Center(
                        child: Container(
                          child: Image.asset('assets/Images/studentimage.png',scale: 1),/// replace your image with the Icon
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),

                    child: Row(
                      children: [
                        InkWell(

                          onTap: (){
                            Navigator.of(context).pop();
                          },

                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Icon(Icons.arrow_back_ios_outlined,color: Appcolors.brown1,size: 20,),
                          ),
                        ),
                        SizedBox(width: width*0.72,),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: ImageIcon(AssetImage('assets/Iocns/saveicon.png'),color: Appcolors.brown1,size: 20,),
                        ),
                      ],
                    ),
                  ),

                ],

              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(

                children: [
                  SingleChildScrollView(

                      child: Container(

                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24,right: 24),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 24,left: 16,right: 16,bottom: 10),
                                  child: Row(
                                    children: [
                                      RaisedButton(

                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        child: Text('Message',style: Textstyle3Light18.appbartextstyle.copyWith(
                                            fontSize: 14,color: Appcolors.blue1),),
                                        onPressed: (){},
                                      ),

                                      SizedBox(
                                        width: width*0.06,
                                      ),

                                      RaisedButton(

                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        child: Text('Follow',style: Textstyle3Light18.appbartextstyle.copyWith(
                                            fontSize: 14,color: Appcolors.blue1),),
                                        onPressed: (){},
                                      ),

                                    ],
                                  ),
                                ),

                                RaisedButton(

                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Text('Download CV',style: Textstyle3Light18.appbartextstyle.copyWith(
                                      fontSize: 14,color: Appcolors.blue1),),
                                  onPressed: (){},
                                ),

                                Divider(color: Appcolors.grey2,),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 16,top: 24,bottom: 24),
                                  child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pretium at amet, arcu velit. Sodales diam mauris tempus consequat felis, ullamcorper. Aliquam eu ornare nisl vulputate et ultrices amet quisque viverra. Elementum tempus lobortis lobortis sit sodales quam. Venenatis amet odio platea rutrum non.',
                                    style: Textstyle1Light18.appbartextstyle.copyWith(
                                        fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),
                                  ),
                                ),

                                Divider(color: Appcolors.grey2,),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                      onPressed: (){},
                                      icon: Icon(Icons.school_outlined),
                                    ),
                                    Text('June 30, 2018 & August 4, 2020',
                                      style: Textstyle1Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                      onPressed: (){},
                                      icon: ImageIcon(AssetImage('assets/Iocns/employee-icon.png'),color: Appcolors.brown1,),
                                    ),
                                    Text('Accenture scholarship 2017',
                                      style: Textstyle1Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                      onPressed: (){},
                                      icon: ImageIcon(AssetImage('assets/Iocns/workicon.png'),color: Appcolors.brown1,),
                                    ),
                                    Text('Ready to work right away',
                                      style: Textstyle1Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                      onPressed: (){},
                                      icon: ImageIcon(AssetImage('assets/Iocns/dashicon.png'),color: Appcolors.brown1,),
                                    ),
                                    Text('Wien University studied abroad, 2019',
                                      style: Textstyle1Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 8,left: 24,right: 24),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                  child: Row(
                                    children: [
                                      Text('Education',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown2),),

                                      SizedBox(
                                        width: width*0.52,
                                      ),

                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Appcolors.brown2,),
                                      )
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 16,top: 30),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Appcolors.grey7,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 14.25,top: 11.39,bottom: 11.39),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset('assets/Images/bachelorsimage.png',scale: 4,),

                                          SizedBox(
                                            width: 15,
                                          ),

                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Bachelors in business',
                                                style: Textstyle1Light18.appbartextstyle.copyWith(
                                                    fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),),
                                              Text('University of California, 2016',
                                                style: Textstyle1Light18.appbartextstyle.copyWith(
                                                    fontSize: 12,color: Appcolors.grey2,fontWeight: FontWeight.w500),),

                                            ],
                                          ),

                                          SizedBox(width: width*0.1,),

                                          IconButton(
                                            onPressed: (){},
                                            icon: ImageIcon(AssetImage('assets/Images/dotimage.png'),size: 17,color: Appcolors.brown1),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 29.65),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Appcolors.grey7,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 14.25,top: 11.39,bottom: 11.39),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset('assets/Images/bachelorsimage.png',scale: 4,),

                                          SizedBox(
                                            width: 15,
                                          ),

                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Bachelors in business',
                                                style: Textstyle1Light18.appbartextstyle.copyWith(
                                                    fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),),
                                              Text('University of California, 2016',
                                                style: Textstyle1Light18.appbartextstyle.copyWith(
                                                    fontSize: 12,color: Appcolors.grey2,fontWeight: FontWeight.w500),),

                                            ],
                                          ),

                                          SizedBox(width: width*0.1,),

                                          IconButton(
                                            onPressed: (){},
                                            icon: ImageIcon(AssetImage('assets/Images/dotimage.png'),size: 17,color: Appcolors.brown1,),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 8,left: 24,right: 24),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                  child: Row(
                                    children: [
                                      Text('Role expectation',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1),),

                                      SizedBox(
                                        width: width*0.41,
                                      ),

                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Appcolors.brown1,),
                                      )
                                    ],
                                  ),
                                ),

                                Wrap(
                                  // space between chips
                                    spacing: 10,
                                    // list of chips
                                    children: const [
                                      Chip(
                                        label: Text('Digital marketing'),
                                        labelStyle: TextStyle(color: Colors.white),
                                        backgroundColor: Appcolors.purple,
                                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                      ),
                                      Chip(
                                        label: Text('Sales marketing'),
                                        labelStyle: TextStyle(color: Colors.white),
                                        backgroundColor: Appcolors.purple,
                                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                      ),
                                      Chip(
                                        label: Text('Business management'),
                                        labelStyle: TextStyle(color: Colors.white),
                                        backgroundColor: Appcolors.purple,
                                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                      ),
                                      Chip(
                                        label: Text('Branding'),
                                        labelStyle: TextStyle(color: Colors.white),
                                        backgroundColor: Appcolors.purple,
                                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                      ),
                                      Chip(
                                        label: Text('Content creator'),
                                        labelStyle: TextStyle(color: Colors.white),
                                        backgroundColor: Appcolors.purple,
                                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                      ),
                                      Chip(
                                        label: Text('+5'),
                                        labelStyle: TextStyle(color: Appcolors.brown1),
                                        backgroundColor: Colors.white,
                                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                      )
                                    ]),

                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 8,left: 24,right: 24),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                  child: Row(
                                    children: [
                                      Text('Scholarship',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown2),),

                                      SizedBox(
                                        width: width*0.5,
                                      ),

                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Appcolors.brown2,),
                                      )
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 16,top: 30),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Appcolors.grey7,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 14.25,top: 11.39,bottom: 11.39),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset('assets/Images/accentureimage .png',scale: 4,),

                                          SizedBox(
                                            width: 15,
                                          ),

                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Accenture scholarship',
                                                style: Textstyle1Light18.appbartextstyle.copyWith(
                                                    fontSize: 14,color: Appcolors.brown2,fontWeight: FontWeight.w500),),
                                              Text('RnD scholarship - 2017',
                                                style: Textstyle1Light18.appbartextstyle.copyWith(
                                                    fontSize: 12,color: Appcolors.grey2,fontWeight: FontWeight.w500),),

                                            ],
                                          ),

                                          SizedBox(width: width*0.14,),

                                          IconButton(
                                            onPressed: (){},
                                            icon: ImageIcon(AssetImage('assets/Images/dotimage.png'),size: 17,color: Appcolors.brown2,),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 29.65),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Appcolors.grey7,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 14.25,top: 11.39,bottom: 11.39),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset('assets/Images/accentureimage .png',scale: 4,),

                                          SizedBox(
                                            width: 15,
                                          ),

                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Accenture scholarship',
                                                style: Textstyle1Light18.appbartextstyle.copyWith(
                                                    fontSize: 14,color: Appcolors.brown2,fontWeight: FontWeight.w500),),
                                              Text('RnD scholarship - 2017',
                                                style: Textstyle1Light18.appbartextstyle.copyWith(
                                                    fontSize: 12,color: Appcolors.grey2,fontWeight: FontWeight.w500),),

                                            ],
                                          ),

                                          SizedBox(width: width*0.14,),

                                          IconButton(
                                            onPressed: (){},
                                            icon: ImageIcon(AssetImage('assets/Images/dotimage.png'),size: 17,color: Appcolors.brown2,),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 8,left: 24,right: 24),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                  child: Row(
                                    children: [
                                      Text('Language',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown2),),

                                      SizedBox(
                                        width: width*0.53,
                                      ),

                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Appcolors.brown2,),
                                      )
                                    ],
                                  ),
                                ),

                                Divider(color: Appcolors.grey2,),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 16,top: 16,bottom: 18),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('English',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown2,fontWeight: FontWeight.w500),),

                                      SizedBox(width: width*0.6,),

                                      Text('Fluent',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 12,color: Appcolors.brown2,fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ),

                                Divider(color: Appcolors.grey2,),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 16,top: 16,bottom: 18),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Chinese',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown2,fontWeight: FontWeight.w500),),

                                      SizedBox(width: width*0.59,),

                                      Text('Fluent',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 12,color: Appcolors.brown2,fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 8,left: 24,right: 24),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                  child: Row(
                                    children: [
                                      Text('Skills',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown2),),

                                      SizedBox(
                                        width: width*0.6,
                                      ),

                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Appcolors.brown2,),
                                      )
                                    ],
                                  ),
                                ),

                                Divider(color: Appcolors.grey2,),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 16,top: 16,bottom: 18),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Digital marketing',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown2,fontWeight: FontWeight.w500),),

                                      SizedBox(width: width*0.43,),

                                      Text('Expert',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 12,color: Appcolors.brown2,fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ),

                                Divider(color: Appcolors.grey2,),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 16,top: 16,bottom: 18),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Sales marketing',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown2,fontWeight: FontWeight.w500),),

                                      SizedBox(width: width*0.46,),

                                      Text('Expert',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 12,color: Appcolors.brown2,fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ),

                                Divider(color: Appcolors.grey2,),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 16,top: 16,bottom: 18),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Business management',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown2,fontWeight: FontWeight.w500),),

                                      SizedBox(width: width*0.36,),

                                      Text('Expert',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 12,color: Appcolors.brown2,fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 8,left: 24,right: 24),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                  child: Row(
                                    children: [
                                      Text('Experience',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown2),),

                                      SizedBox(
                                        width: width*0.509,
                                      ),

                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Appcolors.brown2,),
                                      )
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 16,top: 30),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Appcolors.grey7,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 14.25,top: 11.39,bottom: 11.39),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset('assets/Images/assuranceimage.png',scale: 4,),

                                          SizedBox(
                                            width: 15,
                                          ),

                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Great assurance Co.',
                                                style: Textstyle1Light18.appbartextstyle.copyWith(
                                                    fontSize: 14,color: Appcolors.brown2,fontWeight: FontWeight.w500),),
                                              Text('Jan 2017 - Feb 2018',
                                                style: Textstyle1Light18.appbartextstyle.copyWith(
                                                    fontSize: 12,color: Appcolors.grey2,fontWeight: FontWeight.w500),),

                                            ],
                                          ),

                                          SizedBox(width: width*0.17,),

                                          IconButton(
                                            onPressed: (){},
                                            icon: ImageIcon(AssetImage('assets/Images/dotimage.png'),size: 17,color: Appcolors.brown2,),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 29.65),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Appcolors.grey7,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 14.25,top: 11.39,bottom: 11.39),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset('assets/Images/assuranceimage.png',scale: 4,),

                                          SizedBox(
                                            width: 15,
                                          ),

                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('First assurance Co.',
                                                style: Textstyle1Light18.appbartextstyle.copyWith(
                                                    fontSize: 14,color: Appcolors.brown2,fontWeight: FontWeight.w500),),
                                              Text('Jan 2017 - Feb 2018',
                                                style: Textstyle1Light18.appbartextstyle.copyWith(
                                                    fontSize: 12,color: Appcolors.grey2,fontWeight: FontWeight.w500),),

                                            ],
                                          ),

                                          SizedBox(width: width*0.2,),

                                          IconButton(
                                            onPressed: (){},
                                            icon: ImageIcon(AssetImage('assets/Images/dotimage.png'),size: 17,color: Appcolors.brown2,),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 8,left: 24,right: 24),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                  child: Row(
                                    children: [
                                      Text('Expected salary per month',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown2),),

                                      SizedBox(
                                          width: width*0.253
                                      ),

                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Appcolors.brown2,),
                                      )
                                    ],
                                  ),
                                ),

                                Divider(color: Appcolors.grey2,),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 16,top: 16,bottom: 18),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Rs.5K - Rs.10K',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown2,fontWeight: FontWeight.w500),),

                                      SizedBox(width: width*0.45,),

                                      Text('Full time',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 12,color: Appcolors.brown2,fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ),

                                Divider(color: Appcolors.grey2,),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 16,top: 16,bottom: 18),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Rs.1K - Rs.5K',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown2,fontWeight: FontWeight.w500),),

                                      SizedBox(width: width*0.47,),

                                      Text('Part time',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 12,color: Appcolors.brown2,fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),

                      ],
                    ),
                  )

                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
