// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
class BrownWatch extends StatefulWidget {
  const BrownWatch({Key? key}) : super(key: key);

  @override
  State<BrownWatch> createState() => _BrownWatchState();
}

class _BrownWatchState extends State<BrownWatch> {
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
            InkWell(

              onTap: (){
                Navigator.of(context).pop();
              },

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Icon(Icons.arrow_back_ios_outlined,size: 15,color: Appcolors.grey2,),
                ),
              ),
            ),

            SizedBox(
              width: width*0.73,
            ),

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: ImageIcon(AssetImage('assets/Iocns/saveicon.png'),size: 15,color: Appcolors.grey2,),
              ),
            ),

          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              SizedBox(height: height*0.1),

              Stack(
                children: [
                  Image.asset('assets/Images/watchimage.png',scale: 3,),
                  Padding(
                    padding: const EdgeInsets.only(left: 89,top: 98),
                    child: Container(
                      padding: EdgeInsets.only(left: 5,right: 5,top: 15,bottom: 10),
                      decoration: BoxDecoration(
                        color: Appcolors.blue1,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text('50%',style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 18,color: Colors.white),),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 38.8),
                child: Text('Brown Watch',
                  style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 24,color: Appcolors.brown1),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24,right: 24,bottom: 39.89),
                child: Container(

                  padding: EdgeInsets.all(23),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Text('Lorem ipsum dolor sit amet, consectetur',
                        style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 14,color: Appcolors.brown1),),
                      Text('adipiscing elit. Odio ornare vel vulputate',
                        style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 14,color: Appcolors.brown1),),
                      Text('placerat. Ipsum ut pellentesque risus',
                        style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 14,color: Appcolors.brown1),),
                      Text('convallis metus ornare magna quis at.',
                        style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 14,color: Appcolors.brown1),),
                    ],
                  ),
                ),
              ),
              Container(
                width: width*0.3,
                child: RaisedButton(
                  color: Appcolors.blue1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text('Redeem',
                      style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 18,color: Colors.white),),
                    onPressed: (){}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
