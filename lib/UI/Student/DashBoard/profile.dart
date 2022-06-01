import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/Student/DashBoard/studentdashbord.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var selectedval = "about";
  final double circleRadius = 120.0;
  static const String routeName = '/Profile';
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Appcolors.brown1,
      appBar: AppBar(
        backgroundColor: Appcolors.brown1,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset('assets/Images/studentimage.png',scale: 5,),
            SizedBox(width: width*0.65),
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
                      height: 250.0,
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

                              Text('Olivia Jansen', style: Textstyle3Light18.appbartextstyle.copyWith(
                                  fontSize: 24,fontWeight: FontWeight.w800,color: Colors.white
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
                        color: Appcolors.brown2

                      ),
                      child: Center(
                        child: Container(
                          child: Image.asset('assets/Images/studentimage.png',scale: 1.55),/// replace your image with the Icon
                        ),
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

                      ? Container(

                    child: Column(
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
                                  padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                  child: Row(
                                    children: [
                                      Text('Edit Description',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Colors.white),),

                                      SizedBox(
                                        width: width*0.41,
                                      ),

                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Colors.white,),
                                      )

                                    ],
                                  ),
                                ),

                                Divider(color: Appcolors.grey2,),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 16,top: 24,bottom: 24),
                                  child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pretium at amet, arcu velit. Sodales diam mauris tempus consequat felis, ullamcorper. Aliquam eu ornare nisl vulputate et ultrices amet quisque viverra. Elementum tempus lobortis lobortis sit sodales quam. Venenatis amet odio platea rutrum non.',
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
                                      icon: ImageIcon(AssetImage('assets/Iocns/employee-icon.png'),color: Appcolors.grey2,),
                                    ),
                                    Text('Accenture scholarship 2017',
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
                                      icon: ImageIcon(AssetImage('assets/Iocns/workicon.png'),color: Appcolors.grey2,),
                                    ),
                                    Text('Open to work right away',
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
                                      icon: ImageIcon(AssetImage('assets/Iocns/dashicon.png'),color: Appcolors.grey2,),
                                    ),
                                    Text('Wien University studied abroad, 2019',
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
                                      Text('Education',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Colors.white),),

                                      SizedBox(
                                        width: width*0.52,
                                      ),

                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Colors.white,),
                                      )
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 16,top: 30),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Appcolors.brown1,
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
                                                    fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),
                                              Text('University of California, 2016',
                                                style: Textstyle1Light18.appbartextstyle.copyWith(
                                                    fontSize: 12,color: Appcolors.grey1,fontWeight: FontWeight.w500),),

                                            ],
                                          ),

                                          SizedBox(width: width*0.1,),

                                          IconButton(
                                            onPressed: (){},
                                            icon: ImageIcon(AssetImage('assets/Images/dotimage.png'),size: 17,color: Colors.white,),
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
                                      color: Appcolors.brown1,
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
                                                    fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),
                                              Text('University of California, 2016',
                                                style: Textstyle1Light18.appbartextstyle.copyWith(
                                                    fontSize: 12,color: Appcolors.grey1,fontWeight: FontWeight.w500),),

                                            ],
                                          ),

                                          SizedBox(width: width*0.1,),

                                          IconButton(
                                            onPressed: (){},
                                            icon: ImageIcon(AssetImage('assets/Images/dotimage.png'),size: 17,color: Colors.white,),
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
                              color: Appcolors.brown2,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                  child: Row(
                                    children: [
                                      Text('Role expectation',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Colors.white),),

                                      SizedBox(
                                        width: width*0.41,
                                      ),

                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Colors.white,),
                                      )
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 16,top: 30),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Appcolors.brown1,
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
                                                    fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),
                                              Text('University of California, 2016',
                                                style: Textstyle1Light18.appbartextstyle.copyWith(
                                                    fontSize: 12,color: Appcolors.grey1,fontWeight: FontWeight.w500),),

                                            ],
                                          ),

                                          SizedBox(width: width*0.1,),

                                          IconButton(
                                            onPressed: (){},
                                            icon: ImageIcon(AssetImage('assets/Images/dotimage.png'),size: 17,color: Colors.white,),
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
                                      color: Appcolors.brown1,
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
                                                    fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),
                                              Text('University of California, 2016',
                                                style: Textstyle1Light18.appbartextstyle.copyWith(
                                                    fontSize: 12,color: Appcolors.grey1,fontWeight: FontWeight.w500),),

                                            ],
                                          ),

                                          SizedBox(width: width*0.1,),

                                          IconButton(
                                            onPressed: (){},
                                            icon: ImageIcon(AssetImage('assets/Images/dotimage.png'),size: 17,color: Colors.white,),
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
                              color: Appcolors.brown2,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                  child: Row(
                                    children: [
                                      Text('Scholarship',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Colors.white),),

                                      SizedBox(
                                        width: width*0.5,
                                      ),

                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Colors.white,),
                                      )
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 16,top: 30),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Appcolors.brown1,
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
                                                    fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),
                                              Text('RnD scholarship - 2017',
                                                style: Textstyle1Light18.appbartextstyle.copyWith(
                                                    fontSize: 12,color: Appcolors.grey1,fontWeight: FontWeight.w500),),

                                            ],
                                          ),

                                          SizedBox(width: width*0.14,),

                                          IconButton(
                                            onPressed: (){},
                                            icon: ImageIcon(AssetImage('assets/Images/dotimage.png'),size: 17,color: Colors.white,),
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
                                      color: Appcolors.brown1,
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
                                                    fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),
                                              Text('RnD scholarship - 2017',
                                                style: Textstyle1Light18.appbartextstyle.copyWith(
                                                    fontSize: 12,color: Appcolors.grey1,fontWeight: FontWeight.w500),),

                                            ],
                                          ),

                                          SizedBox(width: width*0.14,),

                                          IconButton(
                                            onPressed: (){},
                                            icon: ImageIcon(AssetImage('assets/Images/dotimage.png'),size: 17,color: Colors.white,),
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
                              color: Appcolors.brown2,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                  child: Row(
                                    children: [
                                      Text('Language',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Colors.white),),

                                      SizedBox(
                                        width: width*0.53,
                                      ),

                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Colors.white,),
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
                                          fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),

                                      SizedBox(width: width*0.6,),

                                      Text('Fluent',style: Textstyle2Light18.appbartextstyle.copyWith(
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
                                      Text('Chinese',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),

                                      SizedBox(width: width*0.59,),

                                      Text('Fluent',style: Textstyle2Light18.appbartextstyle.copyWith(
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
                                      Text('Skills',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Colors.white),),

                                      SizedBox(
                                        width: width*0.6,
                                      ),

                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Colors.white,),
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
                                          fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),

                                      SizedBox(width: width*0.43,),

                                      Text('Expert',style: Textstyle2Light18.appbartextstyle.copyWith(
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
                                      Text('Sales marketing',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),

                                      SizedBox(width: width*0.46,),

                                      Text('Expert',style: Textstyle2Light18.appbartextstyle.copyWith(
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
                                      Text('Business management',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),

                                      SizedBox(width: width*0.36,),

                                      Text('Expert',style: Textstyle2Light18.appbartextstyle.copyWith(
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
                                      Text('Experience',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Colors.white),),

                                      SizedBox(
                                        width: width*0.509,
                                      ),

                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Colors.white,),
                                      )
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 16,top: 30),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Appcolors.brown1,
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
                                                    fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),
                                              Text('Jan 2017 - Feb 2018',
                                                style: Textstyle1Light18.appbartextstyle.copyWith(
                                                    fontSize: 12,color: Appcolors.grey1,fontWeight: FontWeight.w500),),

                                            ],
                                          ),

                                          SizedBox(width: width*0.17,),

                                          IconButton(
                                            onPressed: (){},
                                            icon: ImageIcon(AssetImage('assets/Images/dotimage.png'),size: 17,color: Colors.white,),
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
                                      color: Appcolors.brown1,
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
                                                    fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),
                                              Text('Jan 2017 - Feb 2018',
                                                style: Textstyle1Light18.appbartextstyle.copyWith(
                                                    fontSize: 12,color: Appcolors.grey1,fontWeight: FontWeight.w500),),

                                            ],
                                          ),

                                          SizedBox(width: width*0.2,),

                                          IconButton(
                                            onPressed: (){},
                                            icon: ImageIcon(AssetImage('assets/Images/dotimage.png'),size: 17,color: Colors.white,),
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
                              color: Appcolors.brown2,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                  child: Row(
                                    children: [
                                      Text('Expected salary per month',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Colors.white),),

                                      SizedBox(
                                        width: width*0.253
                                      ),

                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Colors.white,),
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
                                          fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),

                                      SizedBox(width: width*0.45,),

                                      Text('Full time',style: Textstyle2Light18.appbartextstyle.copyWith(
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
                                      Text('Rs.1K - Rs.5K',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),

                                      SizedBox(width: width*0.47,),

                                      Text('Part time',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),),
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

                      : SizedBox(),

                  selectedval == "event"

                      ? Container(


                    child: Column(
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

                                      Container(
                                        child: RaisedButton(
                                          color: Appcolors.blue1,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(40),
                                          ),
                                          child: Text('Post',
                                            style: Textstyle1Light18.appbartextstyle.copyWith(
                                                fontSize: 14,color: Colors.white,fontWeight: FontWeight.w700),),
                                          onPressed: (){},
                                        ),
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
