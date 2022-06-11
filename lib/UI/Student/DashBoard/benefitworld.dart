// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/Student/DashBoard/studentdashbord.dart';
class Benefitworld extends StatefulWidget {
  const Benefitworld({Key? key}) : super(key: key);

  @override
  State<Benefitworld> createState() => _BenefitworldState();
}

class _BenefitworldState extends State<Benefitworld> {
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
        title: Row(
          children: [
            Image.asset('assets/Images/studentimage.png',scale: 5,),
            Expanded(child: SizedBox()),
            Container(
              margin: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Appcolors.brown2,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset('assets/Iocns/searchicon.png',scale: 4,),
            ),
          ],
        ),

      ),
      endDrawer: StudentDashboard(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30,left: 24,right: 24,bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset('assets/Images/stackimage.png'),

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
                          child: Text('50%',
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
                        Text('Shop now!',
                          style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 24,color: Colors.white),),

                        SizedBox(
                          height: 20,
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Lorem ipsum dolor sit amet,',
                              style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 11,color: Appcolors.grey3),),
                            Text('consectetur adipiscing elit. Arcu',
                              style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 11,color: Appcolors.grey3),),
                            Text('amet enim pellentesque cras id',
                              style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 11,color: Appcolors.grey3),),
                            Text('vulputate. Dapibus.',
                              style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 11,color: Appcolors.grey3),),
                          ],
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        Row(
                          children: [
                            TextButton(
                                onPressed: (){},
                                child: Text('Learn more',
                                  style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 12,color: Appcolors.blue1),)),

                            SizedBox(width: 16,),

                            Container(
                              width: width*0.35,
                              child: RaisedButton(
                                  color: Appcolors.blue1,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Text('Get now',
                                    style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 12,color: Colors.white),),
                                  onPressed: (){}
                              ),
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
                    Text('Benefit world',
                      style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 24,color: Colors.white),),

                    Expanded(child: SizedBox()),

                    Text('Sort',
                      style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 14,color: Appcolors.grey2),),
                  ],
                ),
              ),

              SizedBox(height: 23,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                      children: [

                        Container(
                          decoration: BoxDecoration(
                            color: Appcolors.brown2,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/Images/watchimage.png',scale: 3,),

                              SizedBox(height: height*0.03,),

                              Padding(
                                padding: const EdgeInsets.only(left: 8,right: 10,bottom: 10),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Brown watc...',
                                          style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 14,color: Colors.white),),
                                        Text('New york, US',
                                          style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 12,color: Appcolors.grey2),),
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
                        Padding(
                          padding: const EdgeInsets.only(left: 85,top: 110),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Appcolors.blue1,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 9,bottom: 7,left: 3,right: 4),
                              child: Text('50%',
                                style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 12,color: Colors.white),),
                            ),
                          ),
                        ),
                      ],

                    ),

                    SizedBox(width: 10,),

                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Appcolors.brown2,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/Images/headphoneimage.png',scale: 2.89,),

                              SizedBox(height: height*0.03,),

                              Padding(
                                padding: const EdgeInsets.only(left: 8,right: 10,bottom: 10),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Headphone',
                                          style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 14,color: Colors.white),),
                                        Text('New york, US',
                                          style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 12,color: Appcolors.grey2),),
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
                        Padding(
                          padding: const EdgeInsets.only(left: 85,top: 110),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Appcolors.blue1,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 9,bottom: 7,left: 3,right: 4),
                              child: Text('50%',
                                style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 12,color: Colors.white),),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(width: 10,),

                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Appcolors.brown2,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/Images/headphoneimage.png',scale: 2.89,),

                              SizedBox(height: height*0.03,),

                              Padding(
                                padding: const EdgeInsets.only(left: 8,right: 10,bottom: 10),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Headphone',
                                          style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 14,color: Colors.white),),
                                        Text('New york, US',
                                          style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 12,color: Appcolors.grey2),),
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
                        Padding(
                          padding: const EdgeInsets.only(left: 85,top: 110),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Appcolors.blue1,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 9,bottom: 7,left: 3,right: 4),
                              child: Text('50%',
                                style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 12,color: Colors.white),),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),

              SizedBox(height: height*0.04,),

              Text('Bookmarked',
                style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 24,color: Colors.white),),

              SizedBox(height: 23,),

              Container(
                decoration: BoxDecoration(
                  color: Appcolors.brown2,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 14.25,top: 11.39,bottom: 11.39),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/Images/headphoneimage.png',scale: 8,),

                      SizedBox(
                        width: 15,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Headphone',
                            style: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),
                          Text('New york, US',
                            style: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 12,color: Appcolors.grey1,fontWeight: FontWeight.w500),),

                        ],
                      ),

                      Expanded(child: SizedBox()),

                      Container(
                        decoration: BoxDecoration(
                          color: Appcolors.blue1,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 9,bottom: 7,left: 3,right: 4),
                          child: Text('50%',
                            style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 12,color: Colors.white),),
                        ),
                      ),

                      IconButton(
                        onPressed: (){},
                        icon: ImageIcon(AssetImage('assets/Images/saveicon.png'),size: 17,color: Appcolors.blue1,),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20,),

              Container(
                decoration: BoxDecoration(
                  color: Appcolors.brown2,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 14.25,top: 11.39,bottom: 11.39),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/Images/watchimage.png',scale: 8,),

                      SizedBox(
                        width: 15,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Headphone',
                            style: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),
                          Text('New york, US',
                            style: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 12,color: Appcolors.grey1,fontWeight: FontWeight.w500),),

                        ],
                      ),

                      Expanded(child: SizedBox()),

                      Container(
                        decoration: BoxDecoration(
                          color: Appcolors.blue1,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 9,bottom: 7,left: 3,right: 4),
                          child: Text('50%',
                            style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 12,color: Colors.white),),
                        ),
                      ),

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
