import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/Student/DashBoard/studentdashbord.dart';
class StudentNotification extends StatefulWidget {
  const StudentNotification({Key? key}) : super(key: key);

  @override
  State<StudentNotification> createState() => _StudentNotificationState();
}

class _StudentNotificationState extends State<StudentNotification> {
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
        title: Container(

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

      ),
      endDrawer: StudentDashboard(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 54,left: 24,right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Notifications',
                style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 36,color: Colors.white),),
              TextButton(
                  onPressed: (){},
                  child: Text('Manage',
                    style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 10,color: Appcolors.blue1),),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/Images/round.png',color: Appcolors.brown2,scale: 5,),
                  SizedBox(width: 10,),
                  Text('Lorem Ipsum',
                    style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 12,color: Colors.white),),

                  SizedBox(width: width*0.45),

                  Text('1h ago',
                    style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 10,color: Appcolors.grey2),),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Divider(color: Appcolors.brown3,),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/Images/round.png',color: Appcolors.brown2,scale: 5,),
                  SizedBox(width: 10,),
                  Text('Lorem Ipsum',
                    style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 12,color: Colors.white),),

                  SizedBox(width: width*0.45),

                  Text('2h ago',
                    style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 10,color: Appcolors.grey2),),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Divider(color: Appcolors.brown3,),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/Images/round.png',color: Appcolors.brown2,scale: 5,),
                  SizedBox(width: 10,),
                  Text('Lorem Ipsum',
                    style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 12,color: Colors.white),),

                  SizedBox(width: width*0.45),

                  Text('2h ago',
                    style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 10,color: Appcolors.grey2),),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Divider(color: Appcolors.brown3,),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/Images/round.png',color: Appcolors.brown2,scale: 5,),
                  SizedBox(width: 10,),
                  Text('Lorem Ipsum',
                    style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 12,color: Colors.white),),

                  SizedBox(width: width*0.45),

                  Text('2h ago',
                    style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 10,color: Appcolors.grey2),),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Divider(color: Appcolors.brown3,),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/Images/round.png',color: Appcolors.brown2,scale: 5,),
                  SizedBox(width: 10,),
                  Text('Lorem Ipsum',
                    style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 12,color: Colors.white),),

                  SizedBox(width: width*0.45),

                  Text('1h ago',
                    style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 10,color: Appcolors.grey2),),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Divider(color: Appcolors.brown3,),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/Images/round.png',color: Appcolors.brown2,scale: 5,),
                  SizedBox(width: 10,),
                  Text('Lorem Ipsum',
                    style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 12,color: Colors.white),),

                  SizedBox(width: width*0.45),

                  Text('2h ago',
                    style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 10,color: Appcolors.grey2),),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Divider(color: Appcolors.brown3,),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/Images/round.png',color: Appcolors.brown2,scale: 5,),
                  SizedBox(width: 10,),
                  Text('Lorem Ipsum',
                    style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 12,color: Colors.white),),

                  SizedBox(width: width*0.45),

                  Text('1h ago',
                    style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 10,color: Appcolors.grey2),),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Divider(color: Appcolors.brown3,),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
