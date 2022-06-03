import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/partner/partnerprofile.dart';
class PartnerSign extends StatefulWidget {
  const PartnerSign({Key? key}) : super(key: key);

  @override
  State<PartnerSign> createState() => _PartnerSignState();
}

class _PartnerSignState extends State<PartnerSign> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Appcolors.greylight,
      appBar: AppBar(
        backgroundColor: Appcolors.greylight,
        elevation: 0,
        toolbarHeight: 180,
        automaticallyImplyLeading: false,
        title: Text('Sign In',style: Textstyle1Light18.appbartextstyle.copyWith(
            fontSize: 36,fontWeight: FontWeight.w500,color: Appcolors.brown1),),
        actions: [
          Row(
            children: [
              Image.asset('assets/Images/screen.png',color: Appcolors.brown2,),
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
                  prefixIcon: Icon(Icons.perm_identity,color: Appcolors.brown1,),
                  hintText: 'Enter E-Mail',
                  hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                      fontSize: 16,color: Appcolors.grey2),
                ),
              ),

              SizedBox(height: height*0.09,),

              TextField(
                decoration: Inputdec1.inputDecoration.copyWith(
                  prefixIcon: Icon(Icons.password_outlined,color: Appcolors.brown1,),
                  hintText: 'Enter Password',
                  hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                      fontSize: 16,color: Appcolors.grey2),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  TextButton(
                      onPressed: (){},
                      child: Text('Forgot Password',style: Textstyle1Light18.appbartextstyle.copyWith(
                      fontSize: 12,color: Appcolors.grey4),)),
                ],
              ),

              SizedBox(height: height*0.09,),

              RaisedButton(
                  color: Appcolors.blue1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 17,),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const PartnerProfile()));
                  }
              ),

              SizedBox(height: height*0.15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text('Dont have an account? ',style: Textstyle1Light18.appbartextstyle.copyWith(
                      fontSize: 16,fontWeight: FontWeight.w500,color: Appcolors.brown1),),

                  TextButton(

                      child: Text('Sing up',style: Textstyle3Light18.appbartextstyle.copyWith(
                          fontSize: 16,color: Appcolors.brown1),),
                      onPressed: (){}
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
