// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/Authorization/forgotpassword1.dart';
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Appcolors.brown1,
      appBar: AppBar(
        backgroundColor: Appcolors.brown1,
        elevation: 0,
        toolbarHeight: 180,
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Forgot',style: Textstyle1Light18.appbartextstyle.copyWith(
                fontSize: 36,fontWeight: FontWeight.w500,color: Colors.white),),
            Text('Password',style: Textstyle1Light18.appbartextstyle.copyWith(
                fontSize: 36,fontWeight: FontWeight.w500,color: Colors.white),),
          ],
        ),
        actions: [
          Row(
            children: [
              Image.asset('assets/Images/screen.png'),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24,right: 24,top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                decoration: Inputdec1.inputDecoration.copyWith(
                  prefixIcon: Icon(Icons.perm_identity,color: Colors.white,),
                  hintText: 'First Name',
                  hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                      fontSize: 16,color: Appcolors.grey2),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 29,bottom: 29),
                child: Text('or',style: Textstyle1Light18.appbartextstyle.copyWith(
                    fontSize: 16,color: Appcolors.grey2),),
              ),

              TextField(
                decoration: Inputdec1.inputDecoration.copyWith(
                  prefixIcon: Icon(Icons.perm_identity,color: Colors.white,),
                  hintText: 'First Name',
                  hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                      fontSize: 16,color: Appcolors.grey2),
                ),
              ),

              SizedBox(height: height*0.2,),

              RaisedButton(
                  color: Appcolors.blue1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 17,),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const ForgotPassword1()));
                  }
              ),

              TextButton(

                  child: Text('Go back',style: Textstyle1Light18.appbartextstyle.copyWith(
                      fontSize: 16,color: Appcolors.grey2),),
                  onPressed: (){}
              ),

            ],
          ),
        ),
      ),
    );
  }
}
