import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/Company/companydashboard.dart';
import 'package:hipoz/UI/Company/companymessage1.dart';
import 'package:hipoz/UI/Student/DashBoard/studentmessage1.dart';
class CompanyMessage extends StatefulWidget {
  const CompanyMessage({Key? key}) : super(key: key);

  @override
  State<CompanyMessage> createState() => _CompanyMessageState();
}

class _CompanyMessageState extends State<CompanyMessage> {
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
        title: Image.asset('assets/Images/accentureimage .png',scale: 5,),

      ),
      endDrawer: CompanyDashboard(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 54,left: 24,right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Messages',
                style: Textstyle3Light18.appbartextstyle.copyWith(fontSize: 36,color: Appcolors.brown1),),

              SizedBox(height: 39),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search messages',
                    hintStyle: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 14,color: Appcolors.grey2),
                    prefixIcon: Icon(Icons.search,color: Appcolors.grey1,),
                  ),
                ),
              ),

              TextButton(
                onPressed: (){},
                child: Text('Manage',
                  style: Textstyle1Light18.appbartextstyle.copyWith(fontSize: 10,color: Appcolors.blue1),),
              ),

              InkWell(

                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const CompanyMessage1()));
                },

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)
                      ),
                      child: Image.asset('assets/Iocns/personicon.png',scale: 3,),
                    ),

                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Lorem Ipsum',
                          style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 12,color: Appcolors.brown1,fontWeight: FontWeight.w500),),
                        Text('2 new messages',
                          style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 10,color: Appcolors.brown1),),
                      ],
                    ),

                    SizedBox(width: width*0.45),

                    Column(
                      children: [
                        Text('1h ago',
                          style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 10,color: Appcolors.grey2),),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Appcolors.blue1,
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Divider(color: Appcolors.brown3,),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: Image.asset('assets/Iocns/personicon.png',scale: 3,),
                  ),

                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Lorem Ipsum',
                        style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 12,color: Appcolors.brown1),),
                      Text('How much do you expect?',
                        style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 10,color: Appcolors.brown1,fontWeight: FontWeight.w500),),
                    ],
                  ),

                  SizedBox(width: width*0.32),

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

                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: Image.asset('assets/Iocns/personicon.png',scale: 3,),
                  ),

                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Lorem Ipsum',
                        style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 12,color: Appcolors.brown1),),
                      Text('2 new messages',
                        style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 10,color: Appcolors.brown1),),
                    ],
                  ),

                  SizedBox(width: width*0.45),

                  Column(
                    children: [
                      Text('1h ago',
                        style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 10,color: Appcolors.grey2),),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Appcolors.blue1,
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Divider(color: Appcolors.brown3,),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: Image.asset('assets/Iocns/personicon.png',scale: 3,),
                  ),

                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Lorem Ipsum',
                        style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 12,color: Appcolors.brown1),),
                      Text('How many employees work in you company',
                        style: Textstyle2Light18.appbartextstyle.copyWith(fontSize: 10,color: Appcolors.brown1),),
                    ],
                  ),

                  SizedBox(width: width*0.13),

                  Text('2h ago',
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
