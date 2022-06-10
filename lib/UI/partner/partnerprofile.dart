// ignore_for_file: deprecated_member_use, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/partner/addcoupon.dart';
import 'package:hipoz/UI/partner/addtitle.dart';
class PartnerProfile extends StatefulWidget {
  const PartnerProfile({Key? key}) : super(key: key);

  @override
  State<PartnerProfile> createState() => _PartnerProfileState();
}

class _PartnerProfileState extends State<PartnerProfile> {
  var selectedval = "about";
  final double circleRadius = 120.0;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Appcolors.grey1,

      body: SingleChildScrollView(

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 100 ,left: 20,right: 20),  ///here we create space for the circle avatar to get ut of the box
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

                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Icon(Icons.arrow_back_ios_outlined,color: Appcolors.grey4,size: 20,),
                        ),
                      ],
                    ),
                  ),


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
                        child: Image.asset('assets/Images/wuiimage1.png'),
                      ),
                    ),
                  ),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
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

                      ? Column(
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
                                    padding: const EdgeInsets.only(top: 30,right: 25,bottom: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Image.asset('assets/Images/dotimage.png',scale: 4,),
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 25),
                                    child: RaisedButton(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      onPressed: (){
                                        Navigator.push(context,MaterialPageRoute(builder: (context) => const AddTitle()));
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 70,top: 5,right: 70,bottom: 5),
                                        child: Text('Edit Description',style: Textstyle3Light18.appbartextstyle.copyWith(
                                            fontSize: 14,color: Appcolors.blue1),),
                                      ),
                                    ),
                                  ),

                                  Divider(),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 16,right: 16,top: 24,bottom: 24),
                                    child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pretium at amet, arcu velit. Sodales diam mauris tempus consequat felis, ullamcorper. Aliquam eu ornare nisl vulputate et ultrices amet quisque viverra. Elementum tempus lobortis lobortis sit sodales quam. Venenatis amet odio platea rutrum non.',
                                      style: Textstyle1Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.black1,fontWeight: FontWeight.w500),
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
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 120,left: 95),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(12),
                                                        color: Appcolors.blue1
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(left: 4,right: 4,top: 9.4,bottom: 7.4),
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
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 120,left: 95),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(12),
                                                        color: Appcolors.blue1
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(left: 4,right: 4,top: 9.4,bottom: 7.4),
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

                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: RaisedButton(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      onPressed: (){},
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 70,top: 5,right: 70,bottom: 5),
                                        child: Text('Post a new event',style: Textstyle3Light18.appbartextstyle.copyWith(
                                            fontSize: 14,color: Appcolors.blue1),),
                                      ),
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
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 120,left: 95),
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(12),
                                                            color: Appcolors.blue1
                                                        ),
                                                        child: Padding(
                                                          padding: const EdgeInsets.only(left: 4,right: 4,top: 9.4,bottom: 7.4),
                                                          child: Text('50%',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                              fontSize: 12,color: Colors.white),),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
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
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 120,left: 95),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(12),
                                                        color: Appcolors.blue1
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(left: 4,right: 4,top: 9.4,bottom: 7.4),
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

                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: RaisedButton(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      onPressed: (){
                                        Navigator.push(context,MaterialPageRoute(builder: (context) => const AddCoupon()));
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 70,top: 5,right: 70,bottom: 5),
                                        child: Text('Post a new coupon',style: Textstyle3Light18.appbartextstyle.copyWith(
                                            fontSize: 14,color: Appcolors.blue1),),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),

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
