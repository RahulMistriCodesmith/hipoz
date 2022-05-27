import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Appcolors.brown2,
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Images/background.png'),
            fit: BoxFit.fill
          ),
        ),
        child: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.only(top: 44),
            child: Column(
              children: [
                Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Row(
                  children: [
                    Image.asset('assets/Images/hipozicon.png',width: 27.9,height: 32,),
                    SizedBox(
                      width: 270,
                    ),
                    Text('Sign in',style: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),)
                  ],
                ),
                ),

                SizedBox(
                  height: 164,
                ),

                RichText(
                  text: const TextSpan(
                    text: 'Hire',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Avenir',
                        fontSize: 40),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' High Quality',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'AvenirLTStd-Black',

                              fontSize: 40)
                      ),
                    ],
                  ),
                ),

                RichText(
                  text: const TextSpan(
                    text: 'Team',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Avenir',
                        fontSize: 40),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Members',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'AvenirLTStd-Black',
                              fontSize: 40)
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 24,
                ),
                
                Padding(
                  padding: const EdgeInsets.only(left: 24,right: 24,),
                  child: Text('hipoZ is the digital zone for top students, graduates and young professionals.Get access to exclusive benefits, invitations to hi-class events and top lectures.',
                  style: Textstyle1Light18.appbartextstyle.copyWith(
                      fontSize: 14,color: Colors.white),


                  ),
                ),


              ],
            ),
          ),
        ),
      ),

    );
  }
}


