// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/Company/companydashboard.dart';
import 'package:hipoz/UI/Company/companyfilter.dart';
class CompanySearch extends StatefulWidget {
  const CompanySearch({Key? key}) : super(key: key);

  @override
  State<CompanySearch> createState() => _CompanySearchState();
}

class _CompanySearchState extends State<CompanySearch> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Appcolors.greylight,
      appBar: AppBar(
        backgroundColor: Appcolors.greylight,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset('assets/Images/accentureimage .png',scale: 5,),
            SizedBox(width: width*0.543),
            Container(
              margin: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Appcolors.greylight,
                borderRadius: BorderRadius.circular(16),
              ),

              child: InkWell(
                  onTap: (){

                    setState((){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const CompanyFilter()));
                    });

                  },
                  child: Image.asset('assets/Images/filterimage.png',scale: 4,color: Appcolors.brown1,)),
            ),

            SizedBox(width: width*0.02),

            Container(
              margin: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),

              child: Icon(Icons.clear,size: 15,color: Appcolors.brown1,),
            ),
          ],
        ),

      ),
      endDrawer: CompanyDashboard(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24,top: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: Appcolors.grey9,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search messages',
                    hintStyle: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 14,color: Appcolors.grey4),
                    prefixIcon: Icon(Icons.search,color: Appcolors.brown1,),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24,top: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: Appcolors.grey9,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 21,top: 23,bottom: 10,right: 21),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('You may like',style: Textstyle3Light18.appbartextstyle.copyWith(
                          color: Appcolors.brown1,fontSize: 18
                      ),),

                      SizedBox(height: 25),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/Images/walshimage.png',scale: 4,),

                          SizedBox(width: 19),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Kendall walsh',style: Textstyle3Light18.appbartextstyle.copyWith(
                                  color: Appcolors.brown1,fontSize: 18
                              ),),
                              Text('Bachelor of digital marketing',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  color: Appcolors.brown2,fontSize: 12
                              ),),
                              Text('University of Chicago',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  color: Appcolors.brown2,fontSize: 12
                              ),),
                            ],
                          ),

                          SizedBox(width: 7,),
                          
                          RaisedButton(
                              color: Appcolors.blue1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Text('Follow',style: Textstyle3Light18.appbartextstyle.copyWith(
                                  color: Colors.white,fontSize: 12
                              ),),
                              onPressed: (){}),

                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 5,bottom: 5),
                        child: Divider(color: Appcolors.grey4,),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/Images/mahmoudimage.png',scale: 4,),

                          SizedBox(width: 19),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Mahmoud eid',style: Textstyle3Light18.appbartextstyle.copyWith(
                                  color: Appcolors.brown1,fontSize: 18
                              ),),
                              Text('Bachelor of law',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  color: Appcolors.brown2,fontSize: 12
                              ),),
                              Text('Bachelor of law',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  color: Appcolors.brown2,fontSize: 12
                              ),),
                            ],
                          ),

                          SizedBox(width: 45,),

                          RaisedButton(
                              color: Appcolors.blue1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Text('Follow',style: Textstyle3Light18.appbartextstyle.copyWith(
                                  color: Colors.white,fontSize: 12
                              ),),
                              onPressed: (){}),

                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Divider(color: Appcolors.grey4,),
                      ),

                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
