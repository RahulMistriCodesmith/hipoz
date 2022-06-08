// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/Company/companydashboard.dart';
class CompanyFilter extends StatefulWidget {
  const CompanyFilter({Key? key}) : super(key: key);

  @override
  State<CompanyFilter> createState() => _CompanyFilterState();
}

class _CompanyFilterState extends State<CompanyFilter> {
  bool jobtype = true;
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

            Expanded(child: SizedBox()),

            Container(
              padding: EdgeInsets.all(10),
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
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 21,top: 23,bottom: 10,right: 21),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text('Filters',style: Textstyle3Light18.appbartextstyle.copyWith(
                            color: Appcolors.brown1,fontSize: 18
                        ),),

                        SizedBox(height: 28,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Job Field ',style: Textstyle1Light18.appbartextstyle.copyWith(
                                color: Appcolors.brown1,fontSize: 12
                            ),),
                            SizedBox(width: width*0.58,),
                            Icon(Icons.arrow_drop_down,color: Appcolors.brown1,),
                          ],
                        ),

                        Divider(color: Appcolors.grey4,),

                        SizedBox(height: 28,),

                        InkWell(
                          onTap: (){
                            setState(() {
                              jobtype = !jobtype;
                            });

                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Job Type',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  color: Appcolors.brown1,fontSize: 12
                              ),),
                              SizedBox(width: width*0.6,),
                              Icon(Icons.arrow_drop_down,color: Appcolors.brown1,),
                            ],
                          ),
                        ),

                        jobtype == true

                            ?
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 10),
                                decoration: BoxDecoration(
                                  color: Appcolors.blue1,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Center(
                                  child: Text('Full time',style: Textstyle3Light18.appbartextstyle.copyWith(
                                    color: Colors.white,fontSize: 12,
                                  ),),
                                ),
                              ),

                              SizedBox(height: 25,),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 10),
                                decoration: BoxDecoration(
                                  color: Appcolors.grey9,
                                  border: Border.all(color: Appcolors.purple),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Center(
                                  child: Text('Full time',style: Textstyle3Light18.appbartextstyle.copyWith(
                                    color: Appcolors.blue1,fontSize: 12,
                                  ),),
                                ),
                              ),

                              SizedBox(height: 25,),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 10),
                                decoration: BoxDecoration(
                                  color: Appcolors.grey9,
                                  border: Border.all(color: Appcolors.purple),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Center(
                                  child: Text('Internship',style: Textstyle3Light18.appbartextstyle.copyWith(
                                    color: Appcolors.blue1,fontSize: 12,
                                  ),),
                                ),
                              ),
                            ],
                          ),
                        )
                            :
                        SizedBox(),

                        Divider(color: Appcolors.grey4,),

                        SizedBox(height: 28,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Skills',style: Textstyle1Light18.appbartextstyle.copyWith(
                                color: Appcolors.brown1,fontSize: 12
                            ),),
                            SizedBox(width: width*0.65,),
                            Icon(Icons.arrow_drop_down,color: Appcolors.brown1,),
                          ],
                        ),

                        Divider(color: Appcolors.grey4,),

                        SizedBox(height: 28,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Location',style: Textstyle1Light18.appbartextstyle.copyWith(
                                color: Appcolors.brown1,fontSize: 12
                            ),),
                            SizedBox(width: width*0.6,),
                            Icon(Icons.arrow_drop_down,color: Appcolors.brown1,),
                          ],
                        ),

                        Divider(color: Appcolors.grey4,),

                        SizedBox(height: 28,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Experience',style: Textstyle1Light18.appbartextstyle.copyWith(
                                color: Appcolors.brown1,fontSize: 12
                            ),),
                            SizedBox(width: width*0.57,),
                            Icon(Icons.arrow_drop_down,color: Appcolors.brown1,),
                          ],
                        ),

                        Divider(color: Appcolors.grey4,),

                        SizedBox(height: 28,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Salary',style: Textstyle1Light18.appbartextstyle.copyWith(
                                color: Appcolors.brown1,fontSize: 12
                            ),),
                            SizedBox(width: width*0.63,),
                            Icon(Icons.arrow_drop_down,color: Appcolors.brown1,),
                          ],
                        ),

                        Divider(color: Appcolors.grey4,),

                      ]
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
