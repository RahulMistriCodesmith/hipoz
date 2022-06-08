// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/Company/comapnyeventpage.dart';
import 'package:hipoz/UI/Company/companydashboard.dart';
class CompanyEventWord extends StatefulWidget {
  const CompanyEventWord({Key? key}) : super(key: key);

  @override
  State<CompanyEventWord> createState() => _CompanyEventWordState();
}

class _CompanyEventWordState extends State<CompanyEventWord> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Appcolors.greylight,
      appBar: AppBar(
        backgroundColor: Appcolors.greylight,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset('assets/Images/accentureimage .png',scale: 5,),
            Expanded(child: SizedBox()),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset('assets/Iocns/searchicon.png',scale: 4,),
            ),
          ],
        ),

      ),
      endDrawer: CompanyDashboard(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30,left: 24,right: 24,bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset('assets/Images/stackimage2.png'),

                  Row(
                    children: [

                      SizedBox(
                        width: width*0.7,
                        height: height*0.12,
                      ),

                      Container(
                        decoration: BoxDecoration(
                          color: Appcolors.blue1,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16,bottom: 15,left: 10,right: 10),
                          child: Text('Free',
                            style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 18,color: Colors.white),),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height*0.09,
                        ),
                        Text('Get it now!',
                          style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 24,color: Colors.white),),

                        SizedBox(
                          height: 20,
                        ),

                        Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu amet enim pellentesque cras id vulputate. Dapibus.',
                          style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 11,color: Appcolors.grey3),),

                        SizedBox(
                          height: 30,
                        ),

                        Row(
                          children: [
                            TextButton(
                                onPressed: (){},
                                child: Text('Learn more',
                                  style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 12,color: Appcolors.blue1),)),
                            SizedBox(width: 16,),
                            RaisedButton(
                                color: Appcolors.blue1,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Text('Get now',
                                  style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 12,color: Colors.white),),
                                onPressed: (){}
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 44.56),
                child: Row(
                  children: [
                    Text('Event world',
                      style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 24,color: Appcolors.brown1),),

                    SizedBox(
                      width: width*0.4,
                    ),

                    Text('Sort',
                      style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 14,color: Appcolors.grey4),),
                  ],
                ),
              ),

              SizedBox(height: 23,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          Image.asset('assets/Images/salzburgimage.png',scale: 4.4,),

                          SizedBox(height: height*0.03,),

                          Padding(
                            padding: const EdgeInsets.only(left: 8,right: 10,bottom: 10),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Salzburg su...',
                                      style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 14,color: Appcolors.brown1),),
                                    Text('New york, US',
                                      style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 12,color: Appcolors.grey4),),
                                  ],
                                ),
                                SizedBox(width: 5,),
                                Image.asset('assets/Iocns/saveicon.png',scale: 4,color: Appcolors.brown3,),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),

                    SizedBox(width: 10,),

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          Image.asset('assets/Images/Constantinuimage.png',scale: 4.4,),

                          SizedBox(height: height*0.03,),

                          Padding(
                            padding: const EdgeInsets.only(left: 8,right: 10,bottom: 10),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Constantinu...',
                                      style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 14,color: Appcolors.brown1),),
                                    Text('New york, US',
                                      style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 12,color: Appcolors.grey4),),
                                  ],
                                ),
                                SizedBox(width: 5,),
                                Image.asset('assets/Iocns/saveicon.png',scale: 4,color: Appcolors.brown3,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 10,),

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          Image.asset('assets/Images/dmbimage.png',scale: 4.4,),

                          SizedBox(height: height*0.03,),

                          Padding(
                            padding: const EdgeInsets.only(left: 8,right: 10,bottom: 10),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('DMB im...',
                                      style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 14,color: Appcolors.brown1),),
                                    Text('New york, US',
                                      style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 12,color: Appcolors.grey4),),
                                  ],
                                ),
                                SizedBox(width: 5,),
                                Image.asset('assets/Iocns/saveicon.png',scale: 4,color: Appcolors.brown3,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(height: height*0.04,),

              Text('Upcoming Events',
                style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 24,color: Appcolors.brown1),),

              SizedBox(height: 23,),

              InkWell(

                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const CompanyEvent()));
                },

                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14.25,top: 11.39,bottom: 11.39),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/Images/salzburgimage.png',scale: 11,),

                        SizedBox(
                          width: 15,
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Salzburg Summit',
                              style: Textstyle1Light18.appbartextstyle.copyWith(
                                  fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),),
                            Text('New york, US',
                              style: Textstyle1Light18.appbartextstyle.copyWith(
                                  fontSize: 12,color: Appcolors.grey4,fontWeight: FontWeight.w500),),

                          ],
                        ),

                        SizedBox(width: width*0.3,),



                        IconButton(
                          onPressed: (){},
                          icon: ImageIcon(AssetImage('assets/Images/saveicon.png'),size: 17,color: Appcolors.blue1,),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20,),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 14.25,top: 11.39,bottom: 11.39),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/Images/Constantinuimage.png',scale: 11,),

                      SizedBox(
                        width: 15,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Constantinus',
                            style: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),),
                          Text('New york, US',
                            style: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 12,color: Appcolors.grey4,fontWeight: FontWeight.w500),),

                        ],
                      ),

                      SizedBox(width: width*0.365,),


                      IconButton(
                        onPressed: (){},
                        icon: ImageIcon(AssetImage('assets/Images/saveicon.png'),size: 17,color: Appcolors.blue1,),
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
