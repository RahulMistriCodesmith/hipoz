// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';


class profile1 extends StatefulWidget {
  const profile1({Key? key}) : super(key: key);

  @override
  State<profile1> createState() => _profile1State();
}

class _profile1State extends State<profile1> {
  var selectedval = "about";
  final double circleRadius = 120.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.grey1,
      appBar: AppBar(
        backgroundColor: Appcolors.grey1,
        bottomOpacity: 0,
        elevation: 0,
        actions: [
          Container(
            margin: EdgeInsets.only(top: 5,left: 10,bottom: 5,right: 10),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset('assets/Iocns/searchicon.png',scale: 3.5,),
          ),



          Container(
            margin: EdgeInsets.only(top: 5,left: 10,bottom: 5,right: 10),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset('assets/Iocns/messageicon.png',scale: 3.5,),
          ),



          Container(
            margin: EdgeInsets.only(top: 5,left: 10,bottom: 5,right: 10),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset('assets/Iocns/bellicon.png',scale: 3.5,),
          ),

          Image.asset('assets/Iocns/wuicon.png',width: 40,height: 40,),
          SizedBox(width: 10,)

        ],
      ),

      drawer: Drawer(),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.transparent,
        child: Stack(children: <Widget>[

          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Padding(
                  padding:
                  EdgeInsets.only(top: 100 ,left: 20,right: 20),  ///here we create space for the circle avatar to get ut of the box
                  child: Container(
                    height: 300.0,
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

                            Text('WU Wirtschafuniversität', style: Textstyle3Light18.appbartextstyle.copyWith(
                                fontSize: 24,fontWeight: FontWeight.w800
                            )),
                            Text('Higher education', style: Textstyle2Light18.appbartextstyle.copyWith(
                                fontSize: 14,fontWeight: FontWeight.w500,color: Appcolors.grey2
                            )),

                            SizedBox(
                              height: 30.0,
                            ),
                            Text('Welthandelspl. 1, 1020 ', style: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 14,fontWeight: FontWeight.w500,color: Appcolors.brown1
                            )),
                            Text('Vienna, Austria', style: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 14,fontWeight: FontWeight.w500,color: Appcolors.brown1
                            )),
                            Text('www.wu.ac.at', style: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 14,fontWeight: FontWeight.w500,color: Appcolors.brown1
                            )),
                          ],
                        )
                    ),
                  ),
                ),
                Image.asset('assets/Images/postimage.png'),


                ///Image Avatar
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Container(
                    width: circleRadius,
                    height: circleRadius,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,

                    ),
                    child: Center(
                      child: Container(
                        child: Image.asset('assets/Images/wuiimage1.png'),/// replace your image with the Icon
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
          SingleChildScrollView(

            child: Padding(
              padding: const EdgeInsets.only(top: 470),
              child: Column(
                children: [

                  Row(
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
                            color: selectedval == "about"? Appcolors.brown1: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16,top: 11,right: 16,bottom: 11),
                            child: Text('About',style: Textstyle2Light18.appbartextstyle.copyWith(
                                color: selectedval == "about"? Colors.white: Appcolors.brown1,fontSize: 14,fontWeight: FontWeight.w800
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
                            color: selectedval == "event"? Appcolors.brown1: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16,top: 11,right: 16,bottom: 11),
                            child: Text('Event',style: Textstyle2Light18.appbartextstyle.copyWith(
                                color: selectedval == "event"? Colors.white: Appcolors.brown1,fontSize: 14,fontWeight: FontWeight.w800
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
                            color: selectedval == "seminar"? Appcolors.brown1: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16,top: 11,right: 16,bottom: 11),
                            child: Text('Seminar',style: Textstyle2Light18.appbartextstyle.copyWith(
                                color: selectedval == "seminar"? Colors.white: Appcolors.brown1,fontSize: 14,fontWeight: FontWeight.w800
                            ),),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  selectedval == "about"
                      ? Container(
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
                                      padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                      child: Row(
                                        children: [
                                          Text('Description',style: Textstyle3Light18.appbartextstyle.copyWith(
                                      fontSize: 14,color: Appcolors.brown1),),

                                          SizedBox(
                                            width: 140,
                                          ),

                                          Container(

                                            child: RaisedButton(
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
                                          Text('Our seminars',style: Textstyle3Light18.appbartextstyle.copyWith(
                                              fontSize: 14,color: Appcolors.brown1),),

                                          SizedBox(
                                            width: 190,
                                          ),

                                          Text('See all',style: Textstyle3Light18.appbartextstyle.copyWith(
                                              fontSize: 14,color: Appcolors.brown1),),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20,top: 24,bottom: 24),
                                      child: Row(
                                        children: [
                                          Column(
                                            children: [
                                              Stack(
                                                children: [
                                                  Image.asset('assets/Images/seminarsimgae1.png',width: 136,height: 136,),
                                                  Positioned(
                                                    top: 100,
                                                    left: 100,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(12),
                                                          color: Appcolors.blue1
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(left: 3,right: 4,top: 9.4,bottom: 7.4),
                                                        child: Text('50%',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                            fontSize: 12,color: Colors.white),),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    children: [
                                                      Text('Marketing & ...',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                          fontSize: 14,color: Appcolors.brown1),),
                                                      Text('New york, US',style: Textstyle1Light18.appbartextstyle.copyWith(
                                                          fontSize: 12,color: Appcolors.brown1,fontWeight: FontWeight.w500),),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 15,
                                                  ),
                                                  Image.asset('assets/Iocns/saveicon.png',width: 16,height: 16,)
                                                ],
                                              ),
                                            ],
                                          ),

                                          SizedBox(
                                            width: 30,
                                          ),

                                          Column(
                                            children: [
                                              Stack(
                                                children: [
                                                  Image.asset('assets/Images/seminarsimage2.png',width: 136,height: 136,),
                                                  Positioned(
                                                    top: 100,
                                                    left: 100,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(12),
                                                          color: Appcolors.blue1
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(left: 3,right: 4,top: 9.4,bottom: 7.4),
                                                        child: Text('50%',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                            fontSize: 12,color: Colors.white),),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    children: [
                                                      Text('Marketing & ...',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                          fontSize: 14,color: Appcolors.brown1),),
                                                      Text('New york, US',style: Textstyle1Light18.appbartextstyle.copyWith(
                                                          fontSize: 12,color: Appcolors.brown1,fontWeight: FontWeight.w500),),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 15,
                                                  ),
                                                  Image.asset('assets/Iocns/saveicon.png',width: 16,height: 16,)
                                                ],
                                              ),
                                            ],
                                          ),

                                        ],
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
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                      child: Row(
                                        children: [
                                          Text('Our events',style: Textstyle3Light18.appbartextstyle.copyWith(
                                              fontSize: 14,color: Appcolors.brown1),),

                                          SizedBox(
                                            width: 190,
                                          ),

                                          Text('See all',style: Textstyle3Light18.appbartextstyle.copyWith(
                                              fontSize: 14,color: Appcolors.brown1),),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20,top: 24,bottom: 24),
                                      child: Row(
                                        children: [
                                          Column(
                                            children: [
                                              Stack(
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Image.asset('assets/Images/dmbimage.png',width: 136,height: 136,),
                                                      Positioned(
                                                        top: 100,
                                                        left: 100,
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              borderRadius: BorderRadius.circular(12),
                                                              color: Appcolors.blue1
                                                          ),
                                                          child: Padding(
                                                            padding: const EdgeInsets.only(left: 3,right: 4,top: 9.4,bottom: 7.4),
                                                            child: Text('50%',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                                fontSize: 12,color: Colors.white),),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Positioned(
                                                    top: 100,
                                                    left: 100,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(12),
                                                        color: Appcolors.blue1
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(left: 3,right: 4,top: 9.4,bottom: 7.4),
                                                        child: Text('50%',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                            fontSize: 12,color: Colors.white),),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    children: [
                                                      Text('Marketing & ...',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                          fontSize: 14,color: Appcolors.brown1),),
                                                      Text('New york, US',style: Textstyle1Light18.appbartextstyle.copyWith(
                                                          fontSize: 12,color: Appcolors.brown1,fontWeight: FontWeight.w500),),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 15,
                                                  ),
                                                  Image.asset('assets/Iocns/saveicon.png',width: 16,height: 16,)
                                                ],
                                              ),
                                            ],
                                          ),

                                          SizedBox(
                                            width: 30,
                                          ),

                                          Column(
                                            children: [
                                              Stack(
                                                children: [
                                                  Image.asset('assets/Images/innovationimagepng',width: 136,height: 136,),
                                                  Positioned(
                                                    top: 100,
                                                    left: 100,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(12),
                                                          color: Appcolors.blue1
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(left: 3,right: 4,top: 9.4,bottom: 7.4),
                                                        child: Text('50%',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                            fontSize: 12,color: Colors.white),),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    children: [
                                                      Text('Marketing & ...',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                          fontSize: 14,color: Appcolors.brown1),),
                                                      Text('New york, US',style: Textstyle1Light18.appbartextstyle.copyWith(
                                                          fontSize: 12,color: Appcolors.brown1,fontWeight: FontWeight.w500),),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 15,
                                                  ),
                                                  Image.asset('assets/Iocns/saveicon.png',width: 16,height: 16,)
                                                ],
                                              ),
                                            ],
                                          ),

                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                  )

                      : SingleChildScrollView(
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
                                   padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                   child: Row(
                                     children: [
                                       Text('Description',style: Textstyle3Light18.appbartextstyle.copyWith(
                                           fontSize: 14,color: Appcolors.brown1),),

                                       SizedBox(
                                         width: 140,
                                       ),

                                       Container(

                                         child: RaisedButton(
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
                            padding: const EdgeInsets.only(top: 16),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                children: [
                                  Text('Description',style: Textstyle3Light18.appbartextstyle.copyWith(
                                      fontSize: 14,color: Appcolors.brown1),),
                                  Divider(),
                                  Row(
                                    children: [
                                      Text('Description',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1),),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          
                        ],
                    ),
                      )


                ],
              ),
            ),
          ),
        ]
        ),
      ),

    );
  }
}
/*Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // background image and bottom contents
          Column(
            children: <Widget>[
              Container(
                height: 200.0,

                child: Center(
                  child: Image.asset('assets/Images/postimage.png'),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: Center(
                    child: Text('WU Wirtschafuniversität'),
                  ),
                ),
              )
            ],
          ),
          // Profile image

          Positioned(
            top: 120.0, // (background container size) - (circle height / 2)
            child: Container(
              height: 318,
              width: 288,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Text('WU Wirtschafuniversität',style: Textstyle3Light18.appbartextstyle.copyWith(
                        fontSize: 24,fontWeight: FontWeight.w800
                      )),
                    ),
                    Text('Higher education',style: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 14,fontWeight: FontWeight.w500,color: Appcolors.grey2
                    )),
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Text('Welthandelspl. 1, 1020 ',style: Textstyle1Light18.appbartextstyle.copyWith(
                          fontSize: 14,fontWeight: FontWeight.w500,color: Appcolors.brown1
                      )),
                    ),
                    Text('Vienna, Austria',style: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 14,fontWeight: FontWeight.w500,color: Appcolors.brown1
                    )),
                    Text('www.wu.ac.at',style: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 14,fontWeight: FontWeight.w500,color: Appcolors.brown1
                    ))
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 120.0, // (background container size) - (circle height / 2)
            child: Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green
              ),
              child: Image.asset('assets/Images/wuiimage1.png'),
            ),
          ),
        ],
      ),*/



