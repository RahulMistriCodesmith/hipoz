// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/Student/DashBoard/studentdashbord.dart';
import 'package:hipoz/UI/Student/DashBoard/studentmessage1.dart';
class StudentMessage extends StatefulWidget {
  const StudentMessage({Key? key}) : super(key: key);

  @override
  State<StudentMessage> createState() => _StudentMessageState();
}

class _StudentMessageState extends State<StudentMessage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Appcolors.brown1,
      appBar: AppBar(
        backgroundColor: Appcolors.brown1,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Image.asset('assets/Images/studentimage.png',scale: 5,),

      ),

      endDrawer: StudentDashboard(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 54,left: 24,right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Messages',
                style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 36,color: Colors.white),),

              SizedBox(height: 39),

              Container(
                decoration: BoxDecoration(
                  color: Appcolors.brown2,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search messages',
                    hintStyle: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 14,color: Appcolors.grey2),
                    prefixIcon: Icon(Icons.search,color: Appcolors.grey1,),
                  ),
                ),
              ),

              TextButton(
                onPressed: (){},
                child: Text('Manage',
                  style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 10,color: Appcolors.blue1),),
              ),

              InkWell(

                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const StudentMessage1()));
                },

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/Images/round.png',color: Appcolors.brown2,scale: 5,),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Lorem Ipsum',
                          style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 12,color: Colors.white),),
                        Text('2 new messages',
                          style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 10,color: Colors.white),),
                      ],
                    ),

                    SizedBox(width: width*0.45),

                    Column(
                      children: [
                        Text('1h ago',
                          style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 10,color: Appcolors.grey2),),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Appcolors.blue1,
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Divider(color: Appcolors.brown3,),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/Images/round.png',color: Appcolors.brown2,scale: 5,),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Lorem Ipsum',
                        style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 12,color: Colors.white),),
                      Text('How much do you expect?',
                        style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 10,color: Colors.white),),
                    ],
                  ),

                  SizedBox(width: width*0.32),

                  Text('2h ago',
                    style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 10,color: Appcolors.grey2),),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Divider(color: Appcolors.brown3,),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/Images/round.png',color: Appcolors.brown2,scale: 5,),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Lorem Ipsum',
                        style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 12,color: Colors.white),),
                      Text('2 new messages',
                        style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 10,color: Colors.white),),
                    ],
                  ),

                  SizedBox(width: width*0.45),

                  Column(
                    children: [
                      Text('1h ago',
                        style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 10,color: Appcolors.grey2),),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Appcolors.blue1,
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Divider(color: Appcolors.brown3,),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/Images/round.png',color: Appcolors.brown2,scale: 5,),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Lorem Ipsum',
                        style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 12,color: Colors.white),),
                      Text('How many employees work in you company',
                        style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 10,color: Colors.white),),
                    ],
                  ),

                  SizedBox(width: width*0.13),

                  Text('2h ago',
                    style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 10,color: Appcolors.grey2),),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Divider(color: Appcolors.brown3,),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
