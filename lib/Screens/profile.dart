import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Appcolors.grey1,
      appBar: AppBar(
        backgroundColor: Appcolors.grey1,
        bottomOpacity: 0,
        elevation: 1,
        actions: [
          Container(

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Image.asset('assets/Iocns/searchicon.png',scale: 3.5,),
          ),


          Container(

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Image.asset('assets/Iocns/messageicon.png',scale: 3.5,),
          ),

          Container(

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Image.asset('assets/Iocns/bellicon.png',scale: 3.5,),
          ),

        ],

      ),
      drawer: Drawer(),
    );
  }
}
