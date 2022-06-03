import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/Student/DashBoard/SearchPage.dart';
import 'package:hipoz/UI/Student/DashBoard/benefitworld.dart';
import 'package:hipoz/UI/Student/DashBoard/eventworld.dart';
import 'package:hipoz/UI/Student/DashBoard/profile.dart';
import 'package:hipoz/UI/Student/DashBoard/studentmessage.dart';
import 'package:hipoz/UI/Student/DashBoard/studentnotifications.dart';
class StudentDashboard extends StatefulWidget {
  const StudentDashboard({Key? key}) : super(key: key);

  @override
  State<StudentDashboard> createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {

  final List<String> imageList = [
    'assets/Images/frameimgae.png',
    'assets/Images/frameimgae.png',
  ];

  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('My Personal Journal');

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
            SizedBox(width: width*0.6),
            Container(
              margin: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Appcolors.brown2,
                borderRadius: BorderRadius.circular(16),
              ),

              child: Padding(
                padding: const EdgeInsets.all(12),
                child: InkWell(
                    onTap: (){

                      setState((){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const SearchPage()));
                      });

                    },
                    child: Image.asset('assets/Iocns/searchicon.png',scale: 4,)),
              ),
            ),
          ],
        ),

      ),

      endDrawer: Drawer(
        backgroundColor: Appcolors.brown1,
        width: width,
        child: ListView(
          children: <Widget>[

            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24),
              child: Container(
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
            ),

            SizedBox(height: 45,),

            ListTile(

              title: Text('Dashboard', style: Textstyle1Light18.appbartextstyle.copyWith(
                  color: Appcolors.grey2,fontSize: 16,fontWeight: FontWeight.w800),),
              leading: IconButton(
                icon: Icon(Icons.home,color: Appcolors.grey2,),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              onTap: ()
              {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => StudentDashboard()));
              },
            ),

            Divider(height: 3.0,color: Appcolors.brown3,),

            ListTile(
              leading: Icon(Icons.perm_identity,color: Appcolors.grey2,),
              title: Text('Profile', style: Textstyle1Light18.appbartextstyle.copyWith(
                  color: Appcolors.grey2,fontSize: 16,fontWeight: FontWeight.w800),),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Profile()));
              },
            ),

            Divider(height: 3.0,color: Appcolors.brown3,),

            ListTile(
              leading: Icon(Icons.stars_outlined,color: Appcolors.grey2,),
              title: Text('Benefit World', style: Textstyle1Light18.appbartextstyle.copyWith(
                  color: Appcolors.grey2,fontSize: 16,fontWeight: FontWeight.w800),),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Benefitworld()));
              },
            ),

            Divider(height: 3.0,color: Appcolors.brown3,),

            ListTile(
              leading: Icon(Icons.emoji_events_outlined,color: Appcolors.grey2,),
              title: Text('Event World', style: Textstyle1Light18.appbartextstyle.copyWith(
                  color: Appcolors.grey2,fontSize: 16,fontWeight: FontWeight.w800),),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => EventWorld()));
              },
            ),

            Divider(height: 3.0,color: Appcolors.brown3,),

            ListTile(
              leading: Icon(Icons.message_outlined,color: Appcolors.grey2,),
              title: Text('Messages', style: Textstyle1Light18.appbartextstyle.copyWith(
                  color: Appcolors.grey2,fontSize: 16,fontWeight: FontWeight.w800),),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => StudentMessage()));
              },
            ),

            Divider(height: 3.0,color: Appcolors.brown3,),

            ListTile(
              leading: Icon(Icons.notifications_outlined,color: Appcolors.grey2,),
              title: Text('Notification', style: Textstyle1Light18.appbartextstyle.copyWith(
                  color: Appcolors.grey2,fontSize: 16,fontWeight: FontWeight.w800),),
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
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Appcolors.blue1),
                ),
                child: RaisedButton(
                    color: Appcolors.brown1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text('Sign out',style: Textstyle1Light18.appbartextstyle.copyWith(
                        color: Appcolors.blue1,fontSize: 16,fontWeight: FontWeight.w800),),
                    onPressed: (){}),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.5,right: 23.5,top: 24,bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CarouselSlider.builder(
                itemCount: imageList.length,
                options: CarouselOptions(
                  enlargeCenterPage: false,
                  height: 247,
                  autoPlay: false,
                  reverse: false,
                  aspectRatio: 5.0,
                  viewportFraction: 10,

                ),
                itemBuilder: (context, i, id){
                  //for onTap to redirect to another screen
                  return GestureDetector(
                    child: ClipRRect(

                      child: Image.asset(
                        imageList[i],
                        width: width*0.9,

                      ),
                    ),
                    onTap: (){

                      var url = imageList[i];
                      print(url.toString());
                    },
                  );
                },
              ),

              SizedBox(height: 10),

              Container(
                decoration: BoxDecoration(
                  color: Appcolors.brown2,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.13,top: 21.65,bottom: 16,right: 15.13),
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
                                fontSize: 14,color: Colors.white
                              ),),
                              Text('Vienna, Austria an hour ago',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  fontSize: 12,color: Appcolors.grey2
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
                          fontSize: 21,color: Colors.white
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
                  color: Appcolors.brown2,
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
                                  fontSize: 14,color: Colors.white
                              ),),
                              Text('Vienna, Austria 2 hours ago',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  fontSize: 12,color: Appcolors.grey2
                              ),),
                            ],
                          ),
                          SizedBox(width: width*0.17),
                          Image.asset('assets/Images/dotimage.png',scale: 4,),
                        ],
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text('Post with associate link',style: Textstyle1Light18.appbartextstyle.copyWith(
                          fontSize: 14,color: Colors.white
                      ),),
                      SizedBox(
                        height: 13,
                      ),

                    ],
                  ),
                ),
              ),

              SizedBox(height: 10),

              Container(
                decoration: BoxDecoration(
                  color: Appcolors.brown2,
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
                                  fontSize: 14,color: Colors.white
                              ),),
                              Text('Vienna, Austria an hour ago',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  fontSize: 12,color: Appcolors.grey2
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
                      SizedBox(
                        height: 17,
                      ),
                      Text('Post with associate link',style: Textstyle1Light18.appbartextstyle.copyWith(
                          fontSize: 14,color: Colors.white
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
                                  fontSize: 14,color: Colors.white
                              ),),
                              Text('July 1, 2021',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  fontSize: 12,color: Colors.white
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

            ],
          ),
        ),
      ),
    );
  }
}
