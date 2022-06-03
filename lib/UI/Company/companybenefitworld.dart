import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/Company/companydashboard.dart';
import 'package:hipoz/UI/Company/watch.dart';
class CompanyBenefitworld extends StatefulWidget {
  const CompanyBenefitworld({Key? key}) : super(key: key);

  @override
  State<CompanyBenefitworld> createState() => _CompanyBenefitworldState();
}

class _CompanyBenefitworldState extends State<CompanyBenefitworld> {
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
                    Text('Benefit world',
                      style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 24,color: Appcolors.brown1),),

                    SizedBox(
                      width: width*0.4,
                    ),

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

                    InkWell(

                      child: Stack(
                        children: [

                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
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
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => BrownWatch()));
                      },
                    ),

                    SizedBox(width: 10,),

                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                            color: Colors.white,
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
                style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 24,color: Appcolors.brown1),),

              SizedBox(height: 23,),

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
                      Image.asset('assets/Images/headphoneimage.png',scale: 8,),

                      SizedBox(
                        width: 15,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Headphone',
                            style: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),),
                          Text('New york, US',
                            style: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 12,color: Appcolors.grey4,fontWeight: FontWeight.w500),),

                        ],
                      ),

                      SizedBox(width: width*0.3,),

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
                  color: Colors.white,
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
                                fontSize: 14,color: Appcolors.brown1,fontWeight: FontWeight.w500),),
                          Text('New york, US',
                            style: Textstyle1Light18.appbartextstyle.copyWith(
                                fontSize: 12,color: Appcolors.grey4,fontWeight: FontWeight.w500),),

                        ],
                      ),

                      SizedBox(width: width*0.3,),

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