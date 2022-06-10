import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/Company/companybenefitworld.dart';
import 'package:hipoz/UI/Company/companyeventword.dart';
import 'package:hipoz/UI/Company/companymessage.dart';
import 'package:hipoz/UI/Company/companyprofile.dart';
import 'package:hipoz/UI/Company/companysearchpage.dart';
import 'package:hipoz/UI/Student/DashBoard/benefitworld.dart';
import 'package:hipoz/UI/Student/DashBoard/eventworld.dart';
import 'package:hipoz/UI/Student/DashBoard/profile.dart';
import 'package:hipoz/UI/Student/DashBoard/studentmessage.dart';
import 'package:hipoz/UI/Student/DashBoard/studentnotifications.dart';
class CompanyDashboard extends StatefulWidget {
  const CompanyDashboard({Key? key}) : super(key: key);

  @override
  State<CompanyDashboard> createState() => _CompanyDashboardState();
}

class _CompanyDashboardState extends State<CompanyDashboard> {
  var selectedval = 'color';
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
            Expanded(
                child: SizedBox()
            ),
            InkWell(

              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => const CompanySearch()));
              },

              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset('assets/Iocns/searchicon.png',scale: 4,),
              ),
            ),
          ],
        ),

      ),
      endDrawer: Drawer(
        backgroundColor: Appcolors.greylight,
        width: width,
        child: ListView(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(left: 27,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/Images/accentureimage .png',scale: 4.5,),
                  Expanded(child: SizedBox()),
                  InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.clear,color: Colors.white,)),
                  SizedBox(width: width*0.06,),
                ],
              ),
            ),

            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24,),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 14,color: Appcolors.grey2),
                    prefixIcon: Icon(Icons.search,color: Appcolors.grey1,),
                  ),
                ),
              ),
            ),

            SizedBox(height: 45,),

            ListTile(

              title: Text('Dashboard', style: Textstyle1Light18.appbartextstyle.copyWith(
                  color: selectedval == 'color' ? Appcolors.blue1 : Appcolors.grey2,fontSize: 16,fontWeight: FontWeight.w800),),
              leading: IconButton(
                icon: Icon(Icons.home_outlined,color: selectedval == 'color' ? Appcolors.blue1 : Appcolors.grey2),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              onTap: ()
              {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => CompanyDashboard()));
              },
            ),

            Divider(height: 3.0,color: Appcolors.brown3,),

            ListTile(
              leading: Icon(Icons.perm_identity,color: Appcolors.grey5,),
              title: Text('Profile', style: Textstyle1Light18.appbartextstyle.copyWith(
                  color: Appcolors.grey5,fontSize: 16,fontWeight: FontWeight.w800),),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => CompanyProfile()));
              },
            ),

            Divider(height: 3.0,color: Appcolors.brown3,),

            ListTile(
              leading: Icon(Icons.stars_outlined,color: Appcolors.grey5,),
              title: Text('Benefit World', style: Textstyle1Light18.appbartextstyle.copyWith(
                  color: Appcolors.grey5,fontSize: 16,fontWeight: FontWeight.w800),),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => CompanyBenefitworld()));
              },
            ),

            Divider(height: 3.0,color: Appcolors.brown3,),

            ListTile(
              leading: Icon(Icons.emoji_events_outlined,color: Appcolors.grey5,),
              title: Text('Event World', style: Textstyle1Light18.appbartextstyle.copyWith(
                  color: Appcolors.grey5,fontSize: 16,fontWeight: FontWeight.w800),),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => CompanyEventWord()));
              },
            ),

            Divider(height: 3.0,color: Appcolors.brown3,),

            ListTile(
              leading: Icon(Icons.message_outlined,color: Appcolors.grey5,),
              title: Text('Messages', style: Textstyle1Light18.appbartextstyle.copyWith(
                  color: Appcolors.grey5,fontSize: 16,fontWeight: FontWeight.w800),),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => CompanyMessage()));
              },
            ),

            Divider(height: 3.0,color: Appcolors.brown3,),

            ListTile(
              leading: Icon(Icons.notifications_outlined,color: Appcolors.grey5,),
              title: Text('Notification', style: Textstyle1Light18.appbartextstyle.copyWith(
                  color: Appcolors.grey5,fontSize: 16,fontWeight: FontWeight.w800),),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => StudentNotification()));
              },
            ),

            Divider(height: 3.0,color: Appcolors.brown3,),

            SizedBox(
              height: height*0.35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24,bottom: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Appcolors.blue1),
                ),
                child: RaisedButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text('Sign out',style: Textstyle1Light18.appbartextstyle.copyWith(
                        color: Appcolors.blue1,fontSize: 16,fontWeight: FontWeight.w800),),
                    onPressed: (){}
                ),
              ),
            )
          ],
        ),
      ),


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.5,right: 23.5,top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/Images/companydashimage.png'),

              SizedBox(height: 10),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 17,top: 21.65,bottom: 16,right: 17),
                  child: Column(

                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/Images/posticon.png',scale: 4,),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Österreichische Post',style: Textstyle3Light18.appbartextstyle.copyWith(
                                  fontSize: 14,color: Appcolors.brown1
                              ),),
                              Text('Vienna, Austria an hour ago',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  fontSize: 12,color: Appcolors.grey4
                              ),),
                            ],
                          ),
                          SizedBox(width: width*0.22),
                          Image.asset('assets/Images/dotimage.png',scale: 4,),
                        ],
                      ),
                      SizedBox(
                        height: 9.35,
                      ),
                      Text('We’re hiring a graphic designer...',style: Textstyle3Light18.appbartextstyle.copyWith(
                          fontSize: 21,color: Appcolors.brown1
                      ),),
                      SizedBox(
                        height: 13,
                      ),
                      Image.asset('assets/Images/postimage3.png'),
                      SizedBox(height: 15,),
                      RaisedButton(
                          color: Appcolors.blue1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 74.5,right: 74.5,top: 7,bottom: 7),
                            child: Text('See more',style: Textstyle3Light18.appbartextstyle.copyWith(
                                fontSize: 14,color: Colors.white
                            ),),
                          ),
                          onPressed: (){}),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.13,top: 21.65,bottom: 16),
                  child: Column(

                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/Images/iconpost.png',scale: 4,),

                          SizedBox(width: 12),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Raiffeisen Niederösterreich',style: Textstyle3Light18.appbartextstyle.copyWith(
                                  fontSize: 14,color: Appcolors.brown1
                              ),),
                              Text('Vienna, Austria 2 hours ago',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  fontSize: 12,color: Appcolors.grey4
                              ),),
                            ],
                          ),
                          SizedBox(width: width*0.16),
                          Image.asset('assets/Images/dotimage.png',scale: 4,),
                        ],
                      ),
                      SizedBox(
                        height: height*0.01,
                      ),
                      Text('Post with associate link',style: Textstyle1Light18.appbartextstyle.copyWith(
                          fontSize: 14,color: Appcolors.brown1
                      ),),
                      SizedBox(
                        height: height*0.01,
                      ),

                    ],
                  ),
                ),
              ),

              SizedBox(height: 10),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.13,top: 21.65,bottom: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/Images/posticon.png',scale: 4,),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Österreichische Post',style: Textstyle3Light18.appbartextstyle.copyWith(
                                  fontSize: 14,color: Appcolors.brown1
                              ),),
                              Text('Vienna, Austria an hour ago',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  fontSize: 12,color: Appcolors.grey4
                              ),),
                            ],
                          ),
                          SizedBox(width: width*0.245),
                          Image.asset('assets/Images/dotimage.png',scale: 4,),
                        ],
                      ),
                      SizedBox(
                        height: 9.35,
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text('Post with associate link',style: Textstyle1Light18.appbartextstyle.copyWith(
                          fontSize: 14,color: Appcolors.brown1
                      ),),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Image.asset('assets/Images/dmbimage.png',scale: 12,),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('DMB impact talk',style: Textstyle3Light18.appbartextstyle.copyWith(
                                  fontSize: 14,color: Appcolors.brown1
                              ),),
                              Text('July 1, 2021',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  fontSize: 12,color: Appcolors.brown1
                              ),),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      RaisedButton(
                          color: Appcolors.blue1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 74.5,right: 74.5,top: 7,bottom: 7),
                            child: Text('See more',style: Textstyle3Light18.appbartextstyle.copyWith(
                                fontSize: 14,color: Colors.white
                            ),),
                          ),
                          onPressed: (){}),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.13,top: 21.65,bottom: 16),
                  child: Column(

                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/Images/posticon2.png',scale: 4,),

                          SizedBox(width: 12),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Huawei',style: Textstyle3Light18.appbartextstyle.copyWith(
                                  fontSize: 14,color: Appcolors.brown1
                              ),),
                              Text('Shenzen, China 5 hours ago',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  fontSize: 12,color: Appcolors.grey4
                              ),),
                            ],
                          ),
                          SizedBox(width: width*0.25),
                          Image.asset('assets/Images/dotimage.png',scale: 4,),
                        ],
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text('Post with associate link',style: Textstyle1Light18.appbartextstyle.copyWith(
                          fontSize: 14,color: Appcolors.brown1
                      ),),
                      SizedBox(
                        height: 13,
                      ),

                    ],
                  ),
                ),
              ),

              SizedBox(height: height*0.02),

            ],
          ),
        ),
      ),
    );
  }
}
