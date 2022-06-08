import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
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
        toolbarHeight: 80,
        title: Row(
          children: [
            Container(

              decoration: BoxDecoration(
                color: Appcolors.brown2,
                borderRadius: BorderRadius.circular(16),
              ),
              child: IconButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios_outlined,size: 15,),
              ),
            ),

            Expanded(child: SizedBox()),

            Container(

              decoration: BoxDecoration(
                color: Appcolors.brown2,
                borderRadius: BorderRadius.circular(16),
              ),
              child: IconButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                icon: ImageIcon(AssetImage('assets/Iocns/saveicon.png'),size: 15,),
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
                style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 24,color: Colors.white),),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24),
              child: Container(
                decoration: BoxDecoration(
                  color: Appcolors.brown2,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 23,right: 23,top: 18,bottom: 18),
                  child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Odio ornare vel vulputate placerat. Ipsum ut pellentesque risus convallis metus ornare magna quis at.',
                    style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 14,color: Colors.white),),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24,top: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Appcolors.brown2,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 23,right: 23,top: 18,bottom: 18),
                  child: Row(
                    children: [
                      Icon(Icons.access_time,color: Colors.white,),

                      SizedBox(width: width*0.2,),

                      Text('Time of the event',
                        style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 14,color: Colors.white),),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24,top: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Appcolors.brown2,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 23,right: 23,top: 18,bottom: 18),
                  child: Row(
                    children: [
                      Icon(Icons.calendar_today_outlined,color: Colors.white,),

                      SizedBox(width: width*0.211,),

                      Text('Date of the event',
                        style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 14,color: Colors.white),),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24,top: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Appcolors.brown2,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 23,right: 23,top: 18,bottom: 18),
                  child: Row(
                    children: [
                      ImageIcon(AssetImage('assets/Images/img.png'),color: Colors.white,),

                      SizedBox(width: width*0.211,),

                      Text('Link of the event',
                        style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 14,color: Colors.white),),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24,top: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Appcolors.brown2,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 23,right: 23,top: 18,bottom: 18),
                  child: Row(
                    children: [
                      ImageIcon(AssetImage('assets/Iocns/locationicon.png'),color: Colors.white,),

                      SizedBox(width: width*0.25,),

                      Text('Event Venue',
                        style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 14,color: Colors.white),),
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
