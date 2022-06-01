import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
class ForgotPassword1 extends StatefulWidget {
  const ForgotPassword1({Key? key}) : super(key: key);

  @override
  State<ForgotPassword1> createState() => _ForgotPassword1State();
}

class _ForgotPassword1State extends State<ForgotPassword1> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(
              height: height*0.25,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 37,right: 37),
              child: Text('A password reset link has been sent to your registered email address.',
                style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 18,color: Appcolors.grey2),),
            ),

            SizedBox(
              height: height*0.12,
            ),
            
            RaisedButton(
              color: Appcolors.blue1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text('Sign In',
                  style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w800),),
                onPressed: (){})
            
          ],
        ),
      ),
    );
  }
}
