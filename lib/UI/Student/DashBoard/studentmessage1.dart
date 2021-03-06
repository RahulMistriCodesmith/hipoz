// ignore_for_file: unused_element, unused_field, prefer_const_constructors

import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
class StudentMessage1 extends StatefulWidget {
  const StudentMessage1({Key? key}) : super(key: key);

  @override
  State<StudentMessage1> createState() => _StudentMessage1State();
}

class _StudentMessage1State extends State<StudentMessage1> {

  late TextEditingController _controllerPeople, _controllerMessage;
  late String _message, body;

  List<String> people = [];

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    _controllerPeople = TextEditingController();
    _controllerMessage = TextEditingController();
  }

  Widget _phoneTile(String name) {
    return Padding(
      padding: const EdgeInsets.only(left: 95.06,bottom: 49),
      child: Container(
          width: 254,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              color: Color(0xff12496D)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(0),
                child: Text(
                  name,
                  textScaleFactor: 1,
                  style: const TextStyle(fontSize: 15,color: Colors.white,fontFamily: 'Sk-Modernist'),
                ),
              )
            ],
          )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Appcolors.brown1,
      appBar: AppBar(

        backgroundColor: Appcolors.brown1,
        bottomOpacity: 0.0,
        elevation: 0,
        foregroundColor: Colors.white,
        toolbarHeight: 80,

        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Image.asset('assets/Images/accentureimage .png',scale: 5,),

              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Text('Accenture',style: Textstyle2Light18.appbartextstyle.copyWith(
                  color: Colors.white,fontSize: 14
                ),),
              ),
            ],
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5,left: 50,),
            child: PopupMenuButton(
              color: Colors.white,
              elevation: 20,
              enabled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onSelected: (value) {
                setState(() {
                });
              },
              itemBuilder:(context) => [],
            ),
          ),

        ],

      ),
      bottomNavigationBar:  SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.only(left: 30,bottom: 30),

          child:   Row(
            children: [

              Container(

                padding: EdgeInsets.only(left: 20),
                width: width*0.86,
                height: height*0.06,
                decoration: BoxDecoration(
                  color: Appcolors.brown2,
                    borderRadius: BorderRadius.circular(16),
                ),

                child: TextField(

                  controller: _controllerPeople,

                  decoration:

                  const InputDecoration(

                    border: InputBorder.none,

                    hintText: 'Type Something....',

                    hintStyle: TextStyle(color: Colors.grey,fontFamily: 'Sk-Modernist',fontSize: 15),
                    suffixIcon: Icon(Icons.attach_file_outlined,color: Colors.white,),

                  ),

                  onChanged: (String value) => setState(() {}),

                ),

              ),



            ],),
        ),
      ),

      body: SingleChildScrollView(

        child: Column(
          children: [

            SizedBox(
              height: height*0.45,
            ),

            BubbleNormal(

              text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu amet enim pellentesque cras id vulputate. Dapibus.',
              textStyle: TextStyle(
                fontSize: 15,
                color: Appcolors.brown3,
              ),
              isSender: true,
              color: Colors.white,
              tail: true,
              sent: true,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 25,),
              child: BubbleNormal(
                text: 'Lorem ipsum dolor sit amet.',
                isSender: false,
                color: Appcolors.blue1,
                tail: true,

              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: BubbleNormal(
                text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu amet enim pellentesque cras id vulputate. Dapibus.',
                isSender: false,
                color: Appcolors.blue1,
                tail: true,

              ),
            ),



          ],
        ),
      ),

    );
  }
  void _send() {
    if (people.isEmpty) {
      setState(() => _message = '');
    } else {
      // _sendSMS(people);
    }
  }
}
