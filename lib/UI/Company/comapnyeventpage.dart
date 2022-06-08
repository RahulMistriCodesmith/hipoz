// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
class CompanyEvent extends StatefulWidget {
  const CompanyEvent({Key? key}) : super(key: key);

  @override
  State<CompanyEvent> createState() => _CompanyEventState();
}

class _CompanyEventState extends State<CompanyEvent> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Appcolors.greylight,
      appBar: AppBar(
        backgroundColor: Appcolors.greylight,
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        title: Row(
          children: [
            Container(

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: IconButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios_outlined,size: 15,color: Appcolors.grey2,),
              ),
            ),

            Expanded(child: SizedBox()),

            Container(

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: IconButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                icon: ImageIcon(AssetImage('assets/Iocns/saveicon.png'),size: 15,color: Appcolors.grey2,),
              ),
            ),
          ],
        ),

      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            Image.asset('assets/Images/eventpost.png'),

            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 20),
              child: Text('Salzburg Summit Talk',
                style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 24,color: Appcolors.brown1),),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 23,right: 23,top: 18,bottom: 18),
                  child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Odio ornare vel vulputate placerat. Ipsum ut pellentesque risus convallis metus ornare magna quis at.',
                    style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 14,color: Appcolors.brown1),),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24,top: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 23,right: 23,top: 18,bottom: 18),
                  child: Row(
                    children: [
                      Icon(Icons.access_time,color: Appcolors.brown1,),

                      SizedBox(width: width*0.2,),

                      Text('Time of the event',
                        style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 14,color: Appcolors.brown1),),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24,top: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 23,right: 23,top: 18,bottom: 18),
                  child: Row(
                    children: [
                      Icon(Icons.calendar_today_outlined,color: Appcolors.brown1,),

                      SizedBox(width: width*0.211,),

                      Text('Date of the event',
                        style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 14,color: Appcolors.brown1),),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24,top: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 23,right: 23,top: 18,bottom: 18),
                  child: Row(
                    children: [
                      ImageIcon(AssetImage('assets/Images/img.png'),color: Appcolors.brown1,),

                      SizedBox(width: width*0.211,),

                      Text('Link of the event',
                        style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 14,color: Appcolors.brown1),),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24,top: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 23,right: 23,top: 18,bottom: 18),
                  child: Row(
                    children: [
                      ImageIcon(AssetImage('assets/Iocns/locationicon.png'),color: Appcolors.brown1,),

                      SizedBox(width: width*0.25,),

                      Text('Event Venue',
                        style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 14,color: Appcolors.brown1),),
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
