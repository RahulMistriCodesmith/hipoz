import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/Student/DashBoard/filterpage.dart';
import 'package:hipoz/UI/Student/DashBoard/studentdashbord.dart';
class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
            SizedBox(width: width*0.55),
            Container(
              margin: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Appcolors.brown2,
                borderRadius: BorderRadius.circular(16),
              ),

              child: InkWell(
                  onTap: (){

                    setState((){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const FilterPage()));
                    });

                  },
                  child: Image.asset('assets/Images/filterimage.png',scale: 4,)),
            ),

            SizedBox(width: width*0.02),

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
                      Text('You may like',style: Textstyle3Light18.appbartextstyle.copyWith(
                        color: Colors.white,fontSize: 18
                      ),),

                      SizedBox(height: 25),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/Iocns/syngroupicon.png',scale: 4,),

                          SizedBox(width: 19),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Syngroup',style: Textstyle3Light18.appbartextstyle.copyWith(
                                  color: Colors.white,fontSize: 18
                              ),),
                              Text('Vienna, Austria',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  color: Colors.white,fontSize: 12
                              ),),
                            ],
                          ),

                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 5,bottom: 5),
                        child: Divider(color: Appcolors.grey4,),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/Iocns/wuicon1.png',scale: 4,),

                          SizedBox(width: 19),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Wirtschaftsuniversität ',style: Textstyle3Light18.appbartextstyle.copyWith(
                                  color: Colors.white,fontSize: 18
                              ),),
                              Text('Vienna, Austria',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  color: Colors.white,fontSize: 12
                              ),),
                            ],
                          ),

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
