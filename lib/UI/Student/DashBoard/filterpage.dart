import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/Company/companydashboard.dart';
import 'package:hipoz/UI/Student/DashBoard/studentdashbord.dart';
class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  bool jobtype = true;

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

            SizedBox(width: width*0.65),

            Container(
              margin: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Appcolors.brown2,
                borderRadius: BorderRadius.circular(16),
              ),

              child: Icon(Icons.clear,size: 15,),
            ),
          ],
        ),

      ),
      endDrawer: StudentDashboard(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24,top: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: Appcolors.brown2,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 21,top: 23,bottom: 10,right: 21),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text('Filters',style: Textstyle3Light18.appbartextstyle.copyWith(
                          color: Colors.white,fontSize: 18
                      ),),

                      SizedBox(height: 28,),

                      Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Job Field ',style: Textstyle1Light18.appbartextstyle.copyWith(
                  color: Appcolors.grey10,fontSize: 12
                  ),),
                      SizedBox(width: width*0.58,),
                      Icon(Icons.arrow_drop_down,color: Appcolors.grey10,),
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
                                color: Appcolors.grey10,fontSize: 12
                            ),),
                            SizedBox(width: width*0.6,),
                            Icon(Icons.arrow_drop_down,color: Appcolors.grey10,),
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
                                color: Appcolors.purple,
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
                                color: Appcolors.brown1,
                                border: Border.all(color: Appcolors.purple),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Center(
                                child: Text('Full time',style: Textstyle3Light18.appbartextstyle.copyWith(
                                  color: Appcolors.purple,fontSize: 12,
                                ),),
                              ),
                            ),

                            SizedBox(height: 25,),

                            Container(
                              padding: EdgeInsets.only(top: 10,bottom: 10),
                              decoration: BoxDecoration(
                                color: Appcolors.brown1,
                                border: Border.all(color: Appcolors.purple),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Center(
                                child: Text('Internship',style: Textstyle3Light18.appbartextstyle.copyWith(
                                  color: Appcolors.purple,fontSize: 12,
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
                              color: Appcolors.grey10,fontSize: 12
                          ),),
                          SizedBox(width: width*0.65,),
                          Icon(Icons.arrow_drop_down,color: Appcolors.grey10,),
                        ],
                      ),

                      Divider(color: Appcolors.grey4,),

                      SizedBox(height: 28,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Location',style: Textstyle1Light18.appbartextstyle.copyWith(
                              color: Appcolors.grey10,fontSize: 12
                          ),),
                          SizedBox(width: width*0.6,),
                          Icon(Icons.arrow_drop_down,color: Appcolors.grey10,),
                        ],
                      ),

                      Divider(color: Appcolors.grey4,),

                      SizedBox(height: 28,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Experience',style: Textstyle1Light18.appbartextstyle.copyWith(
                              color: Appcolors.grey10,fontSize: 12
                          ),),
                          SizedBox(width: width*0.57,),
                          Icon(Icons.arrow_drop_down,color: Appcolors.grey10,),
                        ],
                      ),

                      Divider(color: Appcolors.grey4,),

                      SizedBox(height: 28,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Salary',style: Textstyle1Light18.appbartextstyle.copyWith(
                              color: Appcolors.grey10,fontSize: 12
                          ),),
                          SizedBox(width: width*0.63,),
                          Icon(Icons.arrow_drop_down,color: Appcolors.grey10,),
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
