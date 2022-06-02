import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/Company/companydashboard.dart';
class CompanyProfile extends StatefulWidget {
  const CompanyProfile({Key? key}) : super(key: key);

  @override
  State<CompanyProfile> createState() => _CompanyProfileState();
}

class _CompanyProfileState extends State<CompanyProfile> {
  var selectedval = "about";
  final double circleRadius = 120.0;
  static var dropdownValue = 'Job Location';
  static var dropdownValue1 = 'Internship';
  static var dropdownValue2 = 'Select the field of work';
  static var dropdownValue3 = 'Select the skills needed for job';
  static var dropdownValue4 = 'Experience Level';
  static var dropdownValue5 = 'Languages';
  static var dropdownValue6 = 'Select the pay rate';

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
            Image.asset('assets/Iocns/companyprofileicon.png',scale: 5,),
            SizedBox(width: width*0.62),
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
                      height: 260.0,
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

                              Text('Accenture', style: Textstyle3Light18.appbartextstyle.copyWith(
                                  fontSize: 24,fontWeight: FontWeight.w800,color: Appcolors.brown1
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
                                      fontSize: 14,fontWeight: FontWeight.w500,color: Appcolors.brown1
                                  )),
                                ],
                              ),

                              SizedBox(height: 4.72,),

                              Text('Dublin, Ireland', style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 14,fontWeight: FontWeight.w500,color: Appcolors.brown1
                              )),

                              SizedBox(height: 4.72,),

                              Text('www.accenture.at/karriere', style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 14,fontWeight: FontWeight.w500,color: Appcolors.brown1
                              )),

                            ],
                          )
                      ),
                    ),
                  ),
                  Image.asset('assets/Images/companyprofileimage.png'),


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
                          child: Image.asset('assets/Images/accentureimage .png',scale: 1.55),/// replace your image with the Icon
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
                              color: selectedval == "about"? Appcolors.grey6: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16,top: 11,right: 16,bottom: 11),
                              child: Text('About',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  color: selectedval == "about"? Colors.white: Appcolors.grey6,fontSize: 14,fontWeight: FontWeight.w800
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
                              color: selectedval == "event"? Appcolors.grey6: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16,top: 11,right: 16,bottom: 11),
                              child: Text('Posts',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  color: selectedval == "event"? Colors.white: Appcolors.grey6,fontSize: 14,fontWeight: FontWeight.w800
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
                              color: selectedval == "seminar"? Appcolors.grey6: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16,top: 11,right: 16,bottom: 11),
                              child: Text('Jobs',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  color: selectedval == "seminar"? Colors.white: Appcolors.grey6,fontSize: 14,fontWeight: FontWeight.w800
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
                              selectedval = "benefit";
                            });
                          },

                          child: Container(
                            decoration: BoxDecoration(
                              color: selectedval == "benefit"? Appcolors.grey6: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16,top: 11,right: 16,bottom: 11),
                              child: Text('Event and benefit',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  color: selectedval == "benefit"? Colors.white: Appcolors.grey6,fontSize: 14,fontWeight: FontWeight.w800
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
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                  child: Row(
                                    children: [
                                      Text('Edit Description',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1),),

                                      SizedBox(
                                        width: width*0.41,
                                      ),

                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Appcolors.brown1,),
                                      )

                                    ],
                                  ),
                                ),

                                Divider(color: Appcolors.grey2,),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 16,top: 24,bottom: 24),
                                  child: Text('Accenture is a leading global consulting firm offering a broad portfolio of services and digital expertise across Strategy & Consulting, Interactive, Technology and Operations. We apply our extensive experience and specialised skills across more than 40 industries - backed by the world’s largest network of Advanced Technology and Intelligent Operations centres. With 509,000 employees serving clients in over 120 countries, we continuously drive innovation to strengthen our clients’ performance and create sustainable value for their business.',
                                    style: Textstyle1Light18.appbartextstyle.copyWith(
                                        fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),
                                  ),
                                ),

                                Divider(color: Appcolors.grey2,),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                      onPressed: (){},
                                      icon: ImageIcon(AssetImage('assets/Iocns/branchicon.png'),color: Appcolors.grey2,),
                                    ),
                                    Text('15 branches',
                                      style: Textstyle1Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                      onPressed: (){},
                                      icon: ImageIcon(AssetImage('assets/Iocns/employee.png'),color: Appcolors.grey2,),
                                    ),
                                    Text('100.000+ employees',
                                      style: Textstyle1Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                      onPressed: (){},
                                      icon: ImageIcon(AssetImage('assets/Iocns/matketing.png'),color: Appcolors.grey2,),
                                    ),
                                    Text('IT, Marketing, Sales',
                                      style: Textstyle1Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),
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
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                  child: Row(
                                    children: [
                                      Text('Company product',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1),),

                                      SizedBox(
                                        width: width*0.39,
                                      ),

                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Appcolors.brown1,),
                                      )
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
                                        labelStyle: TextStyle(color: Colors.black),
                                        backgroundColor: Colors.white,
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
                              color: Colors.white,
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
                                          fontSize: 14,color: Appcolors.brown1),),

                                      SizedBox(
                                        width: width*0.41,
                                      ),

                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Appcolors.grey2,),
                                      )
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,top: 24,bottom: 24),
                                  child: Text('Fun, supportive, positive',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  fontSize: 14,color: Appcolors.brown1),),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                  child: Row(
                                    children: [
                                      Text('Company philosophy',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1),),

                                      SizedBox(
                                        width: width*0.351,
                                      ),

                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Appcolors.grey2,),
                                      )
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,top: 24,bottom: 24),
                                  child: Text('Fun, supportive, positive',style: Textstyle1Light18.appbartextstyle.copyWith(
                                      fontSize: 14,color: Appcolors.brown1),),
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
                                                fontSize: 14,color: Appcolors.brown1),),
                                            Text('business ethics',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                fontSize: 14,color: Appcolors.brown1),),
                                          ],
                                        ),

                                        SizedBox(
                                          width: width*0.09,
                                        ),

                                        IconButton(
                                          onPressed: (){},
                                          icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Appcolors.grey2,),
                                        )
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 24,bottom: 24),
                                    child: Text('Fun, supportive, positive',style: Textstyle1Light18.appbartextstyle.copyWith(
                                        fontSize: 14,color: Appcolors.brown1),),
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
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                  child: Row(
                                    children: [
                                      Text('Looking for',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1),),

                                      SizedBox(
                                        width: width*0.5,
                                      ),

                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Appcolors.grey2,),
                                      )
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
                                          fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),),

                                      SizedBox(width: width*0.3,),

                                      Text('Sales marketing',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 12,color: Appcolors.brown1,fontWeight: FontWeight.w500),),
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
                                          fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),),

                                      SizedBox(width: width*0.152,),

                                      Text('Digital marketing, Superivisor',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 12,color: Appcolors.brown1,fontWeight: FontWeight.w500),),
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
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
                                  child: Row(
                                    children: [
                                      Text('Type of job',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1),),

                                      SizedBox(
                                        width: width*0.5,
                                      ),

                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Appcolors.grey2,),
                                      )
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
                                          fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),),

                                      SizedBox(width: width*0.43,),

                                      Text('Sales marketing',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 12,color: Appcolors.brown1,fontWeight: FontWeight.w500),),
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
                                          fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),),

                                      SizedBox(width: width*0.27,),

                                      Text('Digital marketing, Superivisor',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 12,color: Appcolors.brown1,fontWeight: FontWeight.w500),),
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
                              color: Colors.white,
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
                                                fontSize: 14,color: Appcolors.brown1),),
                                            Text('field',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                fontSize: 14,color: Appcolors.brown1),),
                                          ],
                                        ),

                                        SizedBox(
                                          width: width*0.159,
                                        ),

                                        IconButton(
                                          onPressed: (){},
                                          icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Appcolors.grey2,),
                                        )
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
                                            fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),),

                                        SizedBox(width: width*0.187,),

                                        Row(
                                          children: [
                                            Text('Los angeles office ',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                fontSize: 12,color: Appcolors.brown1,fontWeight: FontWeight.w500),),
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
                                            fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),),

                                        SizedBox(width: width*0.2191,),

                                        Row(
                                          children: [
                                            Text('Washington office',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                fontSize: 12,color: Appcolors.brown1,fontWeight: FontWeight.w500),),
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
                                            fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),),

                                        SizedBox(width: width*0.294),

                                        Row(
                                          children: [
                                            Text('Los angeles office ',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                fontSize: 12,color: Appcolors.brown1,fontWeight: FontWeight.w500),),
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
                              color: Colors.white,
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
                                                fontSize: 14,color: Appcolors.brown1),),
                                            Text('abroad',style: Textstyle3Light18.appbartextstyle.copyWith(
                                                fontSize: 14,color: Appcolors.brown1),),
                                          ],
                                        ),

                                        SizedBox(
                                          width: width*0.127,
                                        ),

                                        IconButton(
                                          onPressed: (){},
                                          icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Appcolors.grey2,),
                                        )
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
                                            fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),),

                                        SizedBox(width: width*0.43,),

                                        Text('Sales marketing',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 12,color: Appcolors.brown1,fontWeight: FontWeight.w500),),
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
                                            fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),),

                                        SizedBox(width: width*0.22,),

                                        Text('Digital marketing, Superivisor',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 12,color: Appcolors.brown1,fontWeight: FontWeight.w500),),
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
                              color: Colors.white,
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
                                            fontSize: 14,color: Appcolors.brown1),),

                                        SizedBox(
                                          width: width*0.53,
                                        ),

                                        IconButton(
                                          onPressed: (){},
                                          icon: ImageIcon(AssetImage('assets/Iocns/penicon.png'),size: 17,color: Appcolors.grey2,),
                                        )
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
                                            fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),),

                                        SizedBox(width: width*0.555,),

                                        Text('Fluent',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 12,color: Appcolors.brown1,fontWeight: FontWeight.w500),),
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
                                            fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),),

                                        SizedBox(width: width*0.546),

                                        Text('Fluent',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 12,color: Appcolors.brown1,fontWeight: FontWeight.w500),),
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
                    ),
                  )

                      : SizedBox(),

                  selectedval == "event"

                      ? Container(


                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 24,right: 24,bottom: 10),
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
                                      Text('Edit Description',style: Textstyle3Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1),),

                                      SizedBox(
                                        width: width*0.41,
                                      ),

                                      IconButton(
                                        onPressed: (){},
                                        icon: ImageIcon(AssetImage('assets/Iocns/dotsicon.png'),size: 17,color: Appcolors.brown1,),
                                      )

                                    ],
                                  ),
                                ),

                                Divider(color: Appcolors.grey2,),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 16,top: 24,bottom: 24),
                                  child: Text('Accenture is a leading global consulting firm offering a broad portfolio of services and digital expertise across Strategy & Consulting, Interactive, Technology and Operations. We apply our extensive experience and specialised skills across more than 40 industries - backed by the world’s largest network of Advanced Technology and Intelligent Operations centres. With 509,000 employees serving clients in over 120 countries, we continuously drive innovation to strengthen our clients’ performance and create sustainable value for their business.',
                                    style: Textstyle1Light18.appbartextstyle.copyWith(
                                        fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),
                                  ),
                                ),

                                Divider(color: Appcolors.grey2,),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                      onPressed: (){},
                                      icon: ImageIcon(AssetImage('assets/Iocns/branchicon.png'),color: Appcolors.grey2,),
                                    ),
                                    Text('15 branches',
                                      style: Textstyle1Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                      onPressed: (){},
                                      icon: ImageIcon(AssetImage('assets/Iocns/employee.png'),color: Appcolors.grey2,),
                                    ),
                                    Text('100.000+ employees',
                                      style: Textstyle1Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                      onPressed: (){},
                                      icon: ImageIcon(AssetImage('assets/Iocns/matketing.png'),color: Appcolors.grey2,),
                                    ),
                                    Text('IT, Marketing, Sales',
                                      style: Textstyle1Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),
                                    ),
                                  ],
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
                                  child: Text('Post your Job',style: Textstyle3Light18.appbartextstyle.copyWith(
                                      fontSize: 14,color: Appcolors.brown1),),
                                ),

                                Divider(),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16,top: 13.26,bottom: 14),
                                  child: Row(
                                    children: [
                                      Text('Job Title',style: Textstyle4Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1),),
                                      SizedBox(
                                        width: 20.64,
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
                                    children: [
                                      Text('Location',style: Textstyle4Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1),),
                                      SizedBox(
                                        width: 21.64,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 10),
                                        width: width*0.6,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Appcolors.grey2),
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        child: DropdownButtonFormField(
                                          decoration: InputDecoration(
                                            
                                            border: InputBorder.none,

                                          ),
                                          value: dropdownValue,

                                          icon: Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: const Icon(Icons.arrow_drop_down,),
                                          ),
                                          elevation: 16,
                                          style: const TextStyle(color: Colors.grey,fontSize: 15),
                                          onChanged: (String? newValue) {
                                            dropdownValue = newValue!;
                                          },
                                          items: <String>['Job Location']
                                              .map<DropdownMenuItem<String>>((String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
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
                                      Text('Job Type',style: Textstyle4Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1),),
                                      SizedBox(
                                        width: 21.64,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 10),
                                        width: width*0.6,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Appcolors.grey2),
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        child: DropdownButtonFormField(
                                          decoration: InputDecoration(

                                            border: InputBorder.none,

                                          ),
                                          value: dropdownValue1,

                                          icon: Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: const Icon(Icons.arrow_drop_down,),
                                          ),
                                          elevation: 16,
                                          style: const TextStyle(color: Colors.grey,fontSize: 15),
                                          onChanged: (String? newValue) {
                                            dropdownValue1 = newValue!;
                                          },
                                          items: <String>['Internship']
                                              .map<DropdownMenuItem<String>>((String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
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
                                      Text('Field',style: Textstyle4Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1),),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 10),
                                        width: width*0.6,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Appcolors.grey2),
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        child: DropdownButtonFormField(
                                          decoration: InputDecoration(

                                            border: InputBorder.none,

                                          ),
                                          value: dropdownValue2,

                                          icon: Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: const Icon(Icons.arrow_drop_down,),
                                          ),
                                          elevation: 16,
                                          style: const TextStyle(color: Colors.grey,fontSize: 15),
                                          onChanged: (String? newValue) {
                                            dropdownValue2 = newValue!;
                                          },
                                          items: <String>['Select the field of work']
                                              .map<DropdownMenuItem<String>>((String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
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
                                      Text('Skills',style: Textstyle4Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1),),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 10),
                                        width: width*0.6,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Appcolors.grey2),
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        child: DropdownButtonFormField(
                                          decoration: InputDecoration(

                                            border: InputBorder.none,

                                          ),
                                          value: dropdownValue3,

                                          icon: Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: const Icon(Icons.arrow_drop_down,),
                                          ),
                                          elevation: 16,
                                          style: const TextStyle(color: Colors.grey,fontSize: 15),
                                          onChanged: (String? newValue) {
                                            dropdownValue3 = newValue!;
                                          },
                                          items: <String>['Select the skills needed for job']
                                              .map<DropdownMenuItem<String>>((String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
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
                                      Text('Experience',style: Textstyle4Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1),),
                                      SizedBox(
                                        width: 10.97,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 10),
                                        width: width*0.6,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Appcolors.grey2),
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        child: DropdownButtonFormField(
                                          decoration: InputDecoration(

                                            border: InputBorder.none,

                                          ),
                                          value: dropdownValue4,

                                          icon: Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: const Icon(Icons.arrow_drop_down,),
                                          ),
                                          elevation: 16,
                                          style: const TextStyle(color: Colors.grey,fontSize: 15),
                                          onChanged: (String? newValue) {
                                            dropdownValue4 = newValue!;
                                          },
                                          items: <String>['Experience Level']
                                              .map<DropdownMenuItem<String>>((String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
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
                                      Text('Languages',style: Textstyle4Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1),),
                                      SizedBox(
                                        width: 11.60,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 10),
                                        width: width*0.6,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Appcolors.grey2),
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        child: DropdownButtonFormField(
                                          decoration: InputDecoration(

                                            border: InputBorder.none,

                                          ),
                                          value: dropdownValue5,

                                          icon: Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: const Icon(Icons.arrow_drop_down,),
                                          ),
                                          elevation: 16,
                                          style: const TextStyle(color: Colors.grey,fontSize: 15),
                                          onChanged: (String? newValue) {
                                            dropdownValue5 = newValue!;
                                          },
                                          items: <String>['Languages']
                                              .map<DropdownMenuItem<String>>((String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
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
                                      Text('Pay Rate',style: Textstyle4Light18.appbartextstyle.copyWith(
                                          fontSize: 14,color: Appcolors.brown1),),
                                      SizedBox(
                                        width: 21.64,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 10),
                                        width: width*0.6,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Appcolors.grey2),
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        child: DropdownButtonFormField(
                                          decoration: InputDecoration(

                                            border: InputBorder.none,

                                          ),
                                          value: dropdownValue6,

                                          icon: Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: const Icon(Icons.arrow_drop_down,),
                                          ),
                                          elevation: 16,
                                          style: const TextStyle(color: Colors.grey,fontSize: 15),
                                          onChanged: (String? newValue) {
                                            dropdownValue6 = newValue!;
                                          },
                                          items: <String>['Select the pay rate']
                                              .map<DropdownMenuItem<String>>((String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),

                                Divider(),

                                Center(
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
                                
                                SizedBox(height: 20),

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  )

                      : SizedBox(),

                  selectedval == "seminar"

                 ? Column(
                    children: [
                      Text(''),
                    ],
                  )

                      : SizedBox(),



                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
