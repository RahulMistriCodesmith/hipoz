// ignore_for_file: deprecated_member_use, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
class StudentPerspective extends StatefulWidget {
  const StudentPerspective({Key? key}) : super(key: key);

  @override
  State<StudentPerspective> createState() => _StudentPerspectiveState();
}

class _StudentPerspectiveState extends State<StudentPerspective> {
  var selectedval = "about";
  final double circleRadius = 120.0;
  static const String routeName = '/Profile';

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Appcolors.brown1,
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
                        color: Appcolors.brown2,

                      ),
                      width: double.infinity,
                      child: Padding(
                          padding: const EdgeInsets.only(top: 65.0, bottom: 15.0),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: circleRadius/2,),

                              Text('Accenture', style: Textstyle3Light18.appbartextstyle.copyWith(
                                  fontSize: 24,fontWeight: FontWeight.w800,color: Colors.white
                              )),
                              Text('Services and operations', style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 14,fontWeight: FontWeight.w500,color: Appcolors.grey2
                              )),

                              SizedBox(height: 4.72,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.place_outlined,color: Appcolors.grey2,),

                                  SizedBox(width: 6,),

                                  Text('1 Grand canal square', style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 14,fontWeight: FontWeight.w500,color: Appcolors.grey2
                                  )),
                                ],
                              ),

                              SizedBox(height: 4.72,),

                              Text('Dublin, Ireland', style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 14,fontWeight: FontWeight.w500,color: Appcolors.grey2
                              )),

                              Text('www.accnture.at/karriere', style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 14,fontWeight: FontWeight.w500,color: Appcolors.grey2
                              )),

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
                          color: Appcolors.brown2

                      ),
                      child: Center(
                        child: Image.asset('assets/Images/accentureimage .png',scale: 2),
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
                              color: Appcolors.brown1,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Icon(Icons.arrow_back_ios_outlined,color: Colors.white,size: 20,),
                          ),
                        ),
                        SizedBox(width: width*0.72,),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Appcolors.brown1,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: ImageIcon(AssetImage('assets/Iocns/saveicon.png'),color: Colors.white,size: 20,),
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
                    scrollDirection: Axis.horizontal,
                    child: Row(

                      children: [

                        SizedBox(
                          width: 24,
                        ),

                        InkWell(

                          onTap: (){
                            setState(() {
                              selectedval = "about";
                            });
                          },

                          child: Container(
                            decoration: BoxDecoration(
                              color: selectedval == "about"? Appcolors.brown1: Appcolors.brown2,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16,top: 11,right: 16,bottom: 11),
                              child: Text('About',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  color: selectedval == "about"? Colors.white: Appcolors.grey2,fontSize: 14,fontWeight: FontWeight.w800
                              ),),
                            ),
                          ),
                        ),



                        SizedBox(
                          width: 10,
                        ),

                        InkWell(

                          onTap: (){
                            setState(() {
                              selectedval = "event";
                            });
                          },

                          child: Container(
                            decoration: BoxDecoration(
                              color: selectedval == "event"? Appcolors.brown1: Appcolors.brown2,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16,top: 11,right: 16,bottom: 11),
                              child: Text('Jobs applied for',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  color: selectedval == "event"? Colors.white: Appcolors.grey2,fontSize: 14,fontWeight: FontWeight.w800
                              ),),
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 10,
                        ),

                        InkWell(

                          onTap: (){
                            setState(() {
                              selectedval = "seminar";
                            });
                          },

                          child: Container(
                            decoration: BoxDecoration(
                              color: selectedval == "seminar"? Appcolors.brown1: Appcolors.brown2,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16,top: 11,right: 16,bottom: 11),
                              child: Text('Companies you follow',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  color: selectedval == "seminar"? Colors.white: Appcolors.grey2,fontSize: 14,fontWeight: FontWeight.w800
                              ),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  selectedval == "about"

                      ? Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24,right: 24),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Appcolors.brown2,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 24,left: 16,right: 16,bottom: 10),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(left: 30,right: 30),
                                          decoration: BoxDecoration(
                                            color: Appcolors.brown2,
                                            border: Border.all(color: Appcolors.blue1),
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          child: RaisedButton(

                                            color: Appcolors.brown2,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            child: Text('Message',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                fontSize: 14,color: Appcolors.blue1),),
                                            onPressed: (){},
                                          ),

                                        ),

                                        SizedBox(
                                          width: width*0.06,
                                        ),

                                        Container(
                                          padding: const EdgeInsets.only(left: 30,right: 30),
                                          decoration: BoxDecoration(
                                            color: Appcolors.brown2,
                                            border: Border.all(color: Appcolors.blue1),
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          child: RaisedButton(

                                            color: Appcolors.brown2,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            child: Text('Follow',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                fontSize: 14,color: Appcolors.blue1),),
                                            onPressed: (){},
                                          ),

                                        ),

                                      ],
                                    ),
                                  ),

                                  Divider(color: Appcolors.grey2,),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 16,right: 16,top: 24,bottom: 24),
                                    child: Text('Accenture is a leading global consulting firm offering a broad portfolio of services and digital expertise across Strategy & Consulting, Interactive, Technology and Operations. We apply our extensive experience and specialised skills across more than 40 industries - backed by the world’s largest network of Advanced Technology and Intelligent Operations centres. With 509,000 employees serving clients in over 120 countries, we continuously drive innovation to strengthen our clients’ performance and create sustainable value for their business.',
                                      style: Textstyle1Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),
                                    ),
                                  ),

                                  Divider(color: Appcolors.grey2,),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/branchicon.png'),color: Appcolors.blue1,),
                                      ),
                                      Text('15 branches',
                                        style: Textstyle1Light18.appbartextstyle.copyWith(
                                            fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/employee.png'),color: Appcolors.blue1,),
                                      ),
                                      Text('100.000+ employees',
                                        style: Textstyle1Light18.appbartextstyle.copyWith(
                                            fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/matketing.png'),color: Appcolors.blue1,),
                                      ),
                                      Text('IT, Marketing, Sales',
                                        style: Textstyle1Light18.appbartextstyle.copyWith(
                                            fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),
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
                                color: Appcolors.brown2,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                    child: Row(
                                      children: [
                                        Text('Company product',style: Textstyle3Light18.appbartextstyle.copyWith(
                                            fontSize: 14,color: Colors.white),),

                                        SizedBox(
                                          width: width*0.39,
                                        ),
                                        Text('See all',style: Textstyle3Light18.appbartextstyle.copyWith(
                                            fontSize: 14,color: Colors.white),),

                                      ],
                                    ),
                                  ),

                                  Wrap(
                                    // space between chips
                                      spacing: 10,
                                      // list of chips
                                      children: const [
                                        Chip(
                                          label: Text('Property assurance'),
                                          labelStyle: TextStyle(color: Colors.white),
                                          backgroundColor: Appcolors.purple,
                                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                        ),
                                        Chip(
                                          label: Text('Cyber assurance'),
                                          labelStyle: TextStyle(color: Colors.white),
                                          backgroundColor: Appcolors.purple,
                                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                        ),
                                        Chip(
                                          label: Text('Cargo assurance'),
                                          labelStyle: TextStyle(color: Colors.white),
                                          backgroundColor: Appcolors.purple,
                                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                        ),
                                        Chip(
                                          label: Text('Energy assurance'),
                                          labelStyle: TextStyle(color: Colors.white),
                                          backgroundColor: Appcolors.purple,
                                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                        ),
                                        Chip(
                                          label: Text('Health assurance'),
                                          labelStyle: TextStyle(color: Colors.white),
                                          backgroundColor: Appcolors.purple,
                                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                        ),
                                        Chip(
                                          label: Text('+5'),
                                          labelStyle: TextStyle(color: Colors.white),
                                          backgroundColor: Appcolors.brown1,
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
                                color: Appcolors.brown2,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                    child: Row(
                                      children: [
                                        Text('Company culture',style: Textstyle3Light18.appbartextstyle.copyWith(
                                            fontSize: 14,color: Colors.white),),


                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 16,top: 24,bottom: 24),
                                    child: Text('Fun, supportive, positive',style: Textstyle1Light18.appbartextstyle.copyWith(
                                        fontSize: 14,color: Colors.white),),
                                  ),

                                ],
                              ),
                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.only(top: 8,left: 24,right: 24),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Appcolors.brown2,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                    child: Row(
                                      children: [
                                        Text('Company philosophy',style: Textstyle3Light18.appbartextstyle.copyWith(
                                            fontSize: 14,color: Colors.white),),

                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 16,top: 24,bottom: 24),
                                    child: Text('Fun, supportive, positive',style: Textstyle1Light18.appbartextstyle.copyWith(
                                        fontSize: 14,color: Colors.white),),
                                  ),

                                ],
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 8,left: 24,right: 24),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Appcolors.brown2,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16,right: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 24),
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Corporate responsibility and code of',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                  fontSize: 14,color: Colors.white),),
                                              Text('business ethics',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                  fontSize: 14,color: Colors.white),),
                                            ],
                                          ),


                                        ],
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(top: 24,bottom: 24),
                                      child: Text('Fun, supportive, positive',style: Textstyle1Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Colors.white),),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.only(top: 8,left: 24,right: 24),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Appcolors.brown2,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                    child: Row(
                                      children: [
                                        Text('Looking for',style: Textstyle3Light18.appbartextstyle.copyWith(
                                            fontSize: 14,color: Colors.white),),

                                        SizedBox(
                                          width: width*0.5,
                                        ),
                                        Text('See all',style: Textstyle3Light18.appbartextstyle.copyWith(
                                            fontSize: 14,color: Colors.white),),

                                      ],
                                    ),
                                  ),

                                  Wrap(
                                    // space between chips
                                      spacing: 10,
                                      // list of chips
                                      children: const [
                                        Chip(
                                          label: Text('Bachelor’s degree'),
                                          labelStyle: TextStyle(color: Colors.white),
                                          backgroundColor: Appcolors.purple,
                                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                        ),
                                        Chip(
                                          label: Text('Master’s degree'),
                                          labelStyle: TextStyle(color: Colors.white),
                                          backgroundColor: Appcolors.purple,
                                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                        ),

                                      ]),

                                  Divider(color: Appcolors.grey2,),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 16,right: 16,top: 16,bottom: 18),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Bachelor’s degree',style: Textstyle3Light18.appbartextstyle.copyWith(
                                            fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),

                                        SizedBox(width: width*0.3,),

                                        Text('Sales marketing',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),),
                                      ],
                                    ),
                                  ),

                                  Divider(color: Appcolors.grey2,),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 16,right: 16,top: 16,bottom: 18),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Master’s degree',style: Textstyle3Light18.appbartextstyle.copyWith(
                                            fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),

                                        SizedBox(width: width*0.152,),

                                        Text('Digital marketing, Superivisor',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),),
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
                                color: Appcolors.brown2,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                    child: Row(
                                      children: [
                                        Text('Type of job',style: Textstyle3Light18.appbartextstyle.copyWith(
                                            fontSize: 14,color: Colors.white),),

                                        SizedBox(
                                          width: width*0.5,
                                        ),

                                        Text('See all',style: Textstyle3Light18.appbartextstyle.copyWith(
                                            fontSize: 14,color: Colors.white),),

                                      ],
                                    ),
                                  ),

                                  Wrap(
                                    // space between chips
                                      spacing: 10,
                                      // list of chips
                                      children: const [
                                        Chip(
                                          label: Text('Part time'),
                                          labelStyle: TextStyle(color: Colors.white),
                                          backgroundColor: Appcolors.purple,
                                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                        ),
                                        Chip(
                                          label: Text('Full time'),
                                          labelStyle: TextStyle(color: Colors.white),
                                          backgroundColor: Appcolors.purple,
                                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                        ),

                                      ]),

                                  Divider(color: Appcolors.grey2,),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 16,right: 16,top: 16,bottom: 18),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Part time',style: Textstyle3Light18.appbartextstyle.copyWith(
                                            fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),

                                        SizedBox(width: width*0.43,),

                                        Text('Sales marketing',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),),
                                      ],
                                    ),
                                  ),

                                  Divider(color: Appcolors.grey2,),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 16,right: 16,top: 16,bottom: 18),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Full time',style: Textstyle3Light18.appbartextstyle.copyWith(
                                            fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),

                                        SizedBox(width: width*0.27,),

                                        Text('Digital marketing, Superivisor',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),),
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
                                color: Appcolors.brown2,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16,right: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 24),
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Looking for staff in the following',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                  fontSize: 14,color: Colors.white),),
                                              Text('field',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                  fontSize: 14,color: Colors.white),),
                                            ],
                                          ),

                                          SizedBox(
                                            width: width*0.159,
                                          ),

                                          Text('See all',style: Textstyle3Light18.appbartextstyle.copyWith(
                                              fontSize: 14,color: Colors.white),),

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
                                            label: Text('Supervisor'),
                                            labelStyle: TextStyle(color: Colors.white),
                                            backgroundColor: Appcolors.purple,
                                            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                          ),

                                        ]),

                                    Divider(color: Appcolors.grey2,),

                                    Padding(
                                      padding: const EdgeInsets.only(right: 16,top: 16,bottom: 18),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Digital marketing',style: Textstyle3Light18.appbartextstyle.copyWith(
                                              fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),

                                          SizedBox(width: width*0.187,),

                                          Row(
                                            children: [
                                              Text('Los angeles office ',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),),
                                              SizedBox(width: width*0.01,),
                                              ImageIcon(AssetImage('assets/Iocns/iconslinkout.png'),color: Appcolors.grey2,size: 18,)
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    Divider(color: Appcolors.grey2,),

                                    Padding(
                                      padding: const EdgeInsets.only(right: 16,top: 16,bottom: 18),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Sales marketing',style: Textstyle3Light18.appbartextstyle.copyWith(
                                              fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),

                                          SizedBox(width: width*0.2191,),

                                          Row(
                                            children: [
                                              Text('Washington office',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),),
                                              SizedBox(width: width*0.01,),
                                              ImageIcon(AssetImage('assets/Iocns/iconslinkout.png',),color: Appcolors.grey2,size: 18,)
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    Divider(color: Appcolors.grey2,),

                                    Padding(
                                      padding: const EdgeInsets.only(right: 16,top: 16,bottom: 18),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Supervisor',style: Textstyle3Light18.appbartextstyle.copyWith(
                                              fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),

                                          SizedBox(width: width*0.294),

                                          Row(
                                            children: [
                                              Text('Los angeles office ',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),),
                                              SizedBox(width: width*0.01,),
                                              ImageIcon(AssetImage('assets/Iocns/iconslinkout.png'),color: Appcolors.grey2,size: 18,)
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 8,left: 24,right: 24),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Appcolors.brown2,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16,right: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 24),
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Looking for who would be to work',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                  fontSize: 14,color: Colors.white),),
                                              Text('abroad',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                  fontSize: 14,color: Colors.white),),
                                            ],
                                          ),

                                          SizedBox(
                                            width: width*0.127,
                                          ),

                                          Text('See all',style: Textstyle3Light18.appbartextstyle.copyWith(
                                              fontSize: 14,color: Colors.white),),

                                        ],
                                      ),
                                    ),

                                    Wrap(
                                      // space between chips
                                        spacing: 10,
                                        // list of chips
                                        children: const [
                                          Chip(
                                            label: Text('Austria'),
                                            labelStyle: TextStyle(color: Colors.white),
                                            backgroundColor: Appcolors.purple,
                                            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                          ),
                                          Chip(
                                            label: Text('Germany'),
                                            labelStyle: TextStyle(color: Colors.white),
                                            backgroundColor: Appcolors.purple,
                                            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                          ),

                                        ]),

                                    Divider(color: Appcolors.grey2,),

                                    Padding(
                                      padding: const EdgeInsets.only(right: 16,top: 16,bottom: 18),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Austria',style: Textstyle3Light18.appbartextstyle.copyWith(
                                              fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),

                                          SizedBox(width: width*0.43,),

                                          Text('Sales marketing',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),),
                                          SizedBox(width: width*0.01,),
                                        ],
                                      ),
                                    ),

                                    Divider(color: Appcolors.grey2,),

                                    Padding(
                                      padding: const EdgeInsets.only(right: 16,top: 16,bottom: 18),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Germany',style: Textstyle3Light18.appbartextstyle.copyWith(
                                              fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),

                                          SizedBox(width: width*0.22,),

                                          Text('Digital marketing, Superivisor',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),),
                                          SizedBox(width: width*0.01,),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 8,left: 24,right: 24),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Appcolors.brown2,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16,right: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 24),
                                      child: Row(
                                        children: [
                                          Text('Language',style: Textstyle3Light18.appbartextstyle.copyWith(
                                              fontSize: 14,color: Colors.white),),

                                          SizedBox(
                                            width: width*0.53,
                                          ),

                                          Text('See all',style: Textstyle3Light18.appbartextstyle.copyWith(
                                              fontSize: 14,color: Colors.white),),
                                        ],
                                      ),
                                    ),

                                    Divider(color: Appcolors.grey2,),

                                    Padding(
                                      padding: const EdgeInsets.only(right: 16,top: 16,bottom: 18),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('English',style: Textstyle3Light18.appbartextstyle.copyWith(
                                              fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),

                                          SizedBox(width: width*0.555,),

                                          Text('Fluent',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),),
                                          SizedBox(width: width*0.01,),
                                        ],
                                      ),
                                    ),

                                    Divider(color: Appcolors.grey2,),

                                    Padding(
                                      padding: const EdgeInsets.only(right: 16,top: 16,bottom: 18),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Chinese',style: Textstyle3Light18.appbartextstyle.copyWith(
                                              fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),

                                          SizedBox(width: width*0.546),

                                          Text('Fluent',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),),
                                          SizedBox(width: width*0.01,),
                                        ],
                                      ),
                                    ),



                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),

                        ],
                      )

                      : SizedBox(),

                  selectedval == "event"

                      ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                                    padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                    child: Row(
                                      children: [
                                        Text('Description',style: Textstyle3Light18.appbartextstyle.copyWith(
                                            fontSize: 14,color: Appcolors.brown1),),

                                        SizedBox(
                                          width: 140,
                                        ),

                                        RaisedButton(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          onPressed: (){},
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 6,top: 5,right: 6,bottom: 5),
                                            child: Text('Edit Profile',style: Textstyle1Light18.appbartextstyle.copyWith(
                                                fontSize: 14,color: Appcolors.blue1),),
                                          ),
                                        )

                                      ],
                                    ),
                                  ),

                                  Divider(),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 16,right: 16,top: 24,bottom: 24),
                                    child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pretium at amet, arcu velit. Sodales diam mauris tempus consequat felis, ullamcorper. Aliquam eu ornare nisl vulputate et ultrices amet quisque viverra. Elementum tempus lobortis lobortis sit sodales quam. Venenatis amet odio platea rutrum non.',
                                      style: Textstyle1Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.only(top: 8,left: 24,right: 24,bottom: 24),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
                                    child: Text('Add Coupon',style: Textstyle3Light18.appbartextstyle.copyWith(
                                        fontSize: 14,color: Appcolors.brown1),),
                                  ),

                                  Divider(),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 16,top: 13.26,bottom: 14),
                                    child: Row(
                                      children: [
                                        Text('Title',style: Textstyle4Light18.appbartextstyle.copyWith(
                                            fontSize: 14,color: Appcolors.brown1),),
                                        SizedBox(
                                          width: 40,
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(left: 10),
                                          width: width*0.6,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Appcolors.grey2),
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Title of the product',
                                              hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                                                  fontSize: 14,color: Appcolors.grey2),
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),

                                  Divider(),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 16,top: 13.26,bottom: 14),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 150),
                                          child: Text('Description',style: Textstyle4Light18.appbartextstyle.copyWith(
                                            fontSize: 14,color: Appcolors.brown1,),),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(left: 10),
                                          width: width*0.57,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Appcolors.grey2),
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          child: TextField(
                                            maxLines: 8,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Title of the product',
                                              hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                                                  fontSize: 14,color: Appcolors.grey2),
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),

                                  Divider(),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 16,top: 13.26,bottom: 14),
                                    child: Row(
                                      children: [
                                        Text('Discount',style: Textstyle4Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1,),),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(left: 10),
                                          width: width*0.57,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Appcolors.grey2),
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          child: TextField(

                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Discount on the product',
                                              hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                                                  fontSize: 14,color: Appcolors.grey2),
                                              suffixIcon: Image.asset('assets/Images/img_1.png',scale: 1.7),
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),

                                  Divider(),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 16,top: 13.26,bottom: 14),
                                    child: Row(
                                      children: [
                                        Text('Link',style: Textstyle4Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1,),),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(left: 10),
                                          width: width*0.58,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Appcolors.grey2),
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          child: TextField(

                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Discount on the product',
                                              hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                                                  fontSize: 14,color: Appcolors.grey2),
                                              suffixIcon: Image.asset('assets/Images/img.png',scale: 1.8),
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),

                                  Divider(),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 16,bottom: 20),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(16),
                                              border: Border.all(color: Appcolors.blue1)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(top: 7,bottom: 7,left: 15,right: 15),
                                            child: Text('Upload Product Photo',
                                              style: Textstyle1Light18.appbartextstyle.copyWith(
                                                  fontSize: 14,color: Appcolors.blue1,fontWeight: FontWeight.w800),),
                                          ),
                                        ),

                                        SizedBox(
                                          width: 20,
                                        ),

                                        RaisedButton(
                                          color: Appcolors.blue1,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(40),
                                          ),
                                          child: Text('Post',
                                            style: Textstyle1Light18.appbartextstyle.copyWith(
                                                fontSize: 14,color: Colors.white,fontWeight: FontWeight.w700),),
                                          onPressed: (){},
                                        ),
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),

                        ],
                      )

                      : Column(
                    children: [
                      Text(''),
                    ],
                  )



                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
