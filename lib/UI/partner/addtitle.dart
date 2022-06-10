// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
class AddTitle extends StatefulWidget {
  const AddTitle({Key? key}) : super(key: key);

  @override
  State<AddTitle> createState() => _AddTitleState();
}

class _AddTitleState extends State<AddTitle> {
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
        title: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(Icons.arrow_back_ios_outlined,color: Appcolors.grey4,size: 20,),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 40,right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: height*0.04),

              Center(child: Image.asset('assets/Images/addeventimage.png',scale: 3,)),

              SizedBox(height: height*0.035),

              RaisedButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                onPressed: (){

                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 70,top: 5,right: 70,bottom: 5),
                  child: Text('Upload Cover Photo',style: Textstyle3Light18.appbartextstyle.copyWith(
                      fontSize: 14,color: Appcolors.blue1),),
                ),
              ),

              SizedBox(height: 40,),

              Container(
                padding: EdgeInsets.only(left: 10),
                width: width*0.9,
                decoration: BoxDecoration(
                  color: Appcolors.grey8,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  maxLines: 8,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Add description',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 14,color: Appcolors.grey4),
                  ),
                ),
              ),

              SizedBox(height: 20,),

              Container(
                padding: EdgeInsets.only(left: 10),
                width: width*0.9,
                decoration: BoxDecoration(
                  color: Appcolors.grey8,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Time Of the event',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 14,color: Appcolors.grey4),
                    suffixIcon: Icon(Icons.access_time,color: Appcolors.grey4,),
                  ),
                ),
              ),

              SizedBox(height: 20,),

              Container(
                padding: EdgeInsets.only(left: 10),
                width: width*0.9,
                decoration: BoxDecoration(
                  color: Appcolors.grey8,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Date Of the event',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 14,color: Appcolors.grey4),
                    suffixIcon: Icon(Icons.calendar_today_outlined,color: Appcolors.grey4,),
                  ),
                ),
              ),

              SizedBox(height: 20,),

              Container(
                padding: EdgeInsets.only(left: 10),
                width: width*0.9,
                decoration: BoxDecoration(
                  color: Appcolors.grey8,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Link Of the event',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 14,color: Appcolors.grey4),
                    suffixIcon: Icon(Icons.link,color: Appcolors.grey4,),
                  ),
                ),
              ),

              SizedBox(height: 20,),

              Container(
                padding: EdgeInsets.only(left: 10),
                width: width*0.9,
                decoration: BoxDecoration(
                  color: Appcolors.grey8,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Event Venue',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 14,color: Appcolors.grey4),
                    suffixIcon: Icon(Icons.place_outlined,color: Appcolors.grey4,),
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
