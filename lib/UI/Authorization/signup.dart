import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
import 'package:hipoz/UI/Authorization/landingpage.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:onboarding/onboarding.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  late Material materialButton;
  late int index;
  final onboardingPagesList = [
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Appcolors.brown1,
          border: Border.all(
            width: 0.0,
            color: Appcolors.brown1,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: const EdgeInsets.only(top: 59,left: 24,right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: Inputdec1.inputDecoration.copyWith(
                    prefixIcon: Icon(Icons.perm_identity,color: Colors.white,),
                    hintText: 'First Name',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 42,
                ),

                TextField(
                  decoration: Inputdec1.inputDecoration.copyWith(
                    prefixIcon: Icon(Icons.perm_identity,color: Colors.white,),
                    hintText: 'Last Name',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 42,
                ),

                TextField(
                  decoration: Inputdec1.inputDecoration.copyWith(
                    prefixIcon: Icon(Icons.mail_outline,color: Colors.white,),
                    hintText: 'Email Address',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 42,
                ),

                IntlPhoneField(
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    hintStyle: Textstyle2Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    filled: true,

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      borderSide: BorderSide(width: 2,color: Appcolors.grey2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      borderSide: BorderSide(width: 2,color: Appcolors.grey2),
                    ),
                  ),
                  initialCountryCode: 'US',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                  onCountryChanged: (country) {
                    print('Country changed to: ' + country.name);
                  },
                ),

                SizedBox(
                  height: 15,
                ),

                TextField(
                  decoration: Inputdec1.inputDecoration.copyWith(
                    prefixIcon: Image.asset('assets/Images/password.png',scale: 3.5,),
                    hintText: 'Enter Password',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 42,
                ),

                TextField(
                  decoration: Inputdec1.inputDecoration.copyWith(
                    prefixIcon: Image.asset('assets/Images/password.png',scale: 3.5,),
                    hintText: 'Confirm Password',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    ),


    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Appcolors.brown1,
          border: Border.all(
            width: 0.0,
            color: Appcolors.brown1,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Appcolors.blue1,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40,top: 40),
                      child: Image.asset('assets/Iocns/penicon.png',color: Colors.white,scale: 2,),
                    )
                  ],
                ),

                SizedBox(
                  height: 60,
                ),

                Row(
                  children: [
                    Container(
                      width: 153,
                      height: 48,
                      child: TextFormField(
                        decoration: Inputdec1.inputDecoration.copyWith(
                          hintText: "D.O.B",
                          suffixIcon: Icon(Icons.calendar_today_outlined,color: Colors.white,)
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    Container(
                      width: 153,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: Appcolors.grey1)
                      ),

                      child: DropdownButtonFormField(
                        decoration: InputDecoration(

                          border: InputBorder.none,

                          filled: true,

                        ),
                        value: dropdownValue,

                        icon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(Icons.arrow_drop_down,),
                        ),
                        elevation: 16,
                        style: const TextStyle(color: Colors.grey,fontSize: 15),
                        onChanged: (String? newValue) {
                          dropdownValue = newValue!;
                        },
                        items: <String>['Male', 'Female']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),

                  ],
                ),

                SizedBox(
                  height: 42,
                ),

                TextField(
                  maxLines: 7,
                  decoration: Inputdec1.inputDecoration.copyWith(
                    hintText: 'Address (Area and Street)',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 42,
                ),

                Row(
                  children: [
                    Container(
                      width: 153,
                      height: 48,
                      child: TextFormField(
                        decoration: Inputdec1.inputDecoration.copyWith(
                          hintText: "Pincode",
                          suffixIcon: Icon(Icons.location_on_outlined,color: Colors.white,),
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    Container(
                      width: 153,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: Appcolors.grey1)
                      ),

                      child: DropdownButtonFormField(
                        decoration: InputDecoration(

                          border: InputBorder.none,

                          filled: true,

                        ),
                        value: dropdownValue1,

                        icon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(Icons.arrow_drop_down,),
                        ),
                        elevation: 16,
                        style: const TextStyle(color: Colors.grey,fontSize: 15),
                        onChanged: (String? newValue) {
                          dropdownValue1 = newValue!;
                        },
                        items: <String>['City']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),

                  ],
                ),

                SizedBox(
                  height: 42,
                ),

                Row(
                  children: [
                    Container(
                      width: 153,
                      height: 48,
                      child: TextFormField(
                        decoration: Inputdec1.inputDecoration.copyWith(

                          hintText: "Region",
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    Container(
                      width: 153,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Appcolors.grey1)
                      ),

                      child: DropdownButtonFormField(
                        decoration: InputDecoration(

                         border: InputBorder.none,

                          filled: true,

                        ),
                        value: dropdownValue2,

                        icon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(Icons.arrow_drop_down,),
                        ),
                        elevation: 16,
                        style: const TextStyle(color: Colors.grey,fontSize: 15),
                        onChanged: (String? newValue) {
                          dropdownValue2 = newValue!;
                        },
                        items: <String>['Country']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),

                  ],
                ),

                SizedBox(
                  height: 15,
                ),


              ],
            ),
          ),
        ),
      ),
    ),


    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Appcolors.brown1,
          border: Border.all(
            width: 0.0,
            color: Appcolors.brown1,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 145),
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(

                      border: InputBorder.none,

                      filled: true,

                    ),
                    value: degree,

                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      degree = newValue!;
                    },
                    items: <String>['Degree']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                SizedBox(
                  height: 29.66,
                ),

                Container(
                  padding: EdgeInsets.only(left: 135),
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(

                      border: InputBorder.none,

                      filled: true,

                    ),
                    value: study,

                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      study = newValue!;
                    },
                    items: <String>['Field of Study']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),


                SizedBox(
                  height: 29.66,
                ),

                TextField(

                  decoration: Inputdec1.inputDecoration.copyWith(
                    hintText: 'University Name',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),


                SizedBox(
                  height: 29.66,
                ),

                TextField(
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.calendar_today_outlined,color: Colors.white,),
                    hintText: 'Graduation Date',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 29.66,
                ),

                DottedBorder(
                  color: Appcolors.blue1,
                  strokeWidth: 1,
                  radius: Radius.circular(16),
                  dashPattern: [15, 15],
                  child: Container(
                    padding: EdgeInsets.only(left: 90,top: 11,bottom: 10.88),
                    child: Row(
                      children: [
                        Text('Add graduation history',style: TextStyle(color: Colors.white),),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.add,color: Appcolors.blue1,),
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 29.66,
                ),

                TextField(
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'Scholarship',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 29.66,
                ),

                Container(
                  padding: EdgeInsets.only(left: 120),
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(

                      border: InputBorder.none,

                      filled: true,

                    ),
                    value: work,

                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      work = newValue!;
                    },
                    items: <String>['Work Availability']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                SizedBox(
                  height: 29.66,
                ),

                TextField(
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'Name of the scholarship',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 29.66,
                ),

                Container(
                  padding: EdgeInsets.only(left: 100),
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(

                      border: InputBorder.none,

                      filled: true,

                    ),
                    value: institution,

                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      institution = newValue!;
                    },
                    items: <String>['Scholarship Institution']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                SizedBox(
                  height: 29.66,
                ),

                TextField(
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'Scholarship Received on',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 29.66,
                ),

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Appcolors.blue1)
                  ),
                  child: RaisedButton(
                    color: Appcolors.brown1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 90,
                          ),
                          Text('Upload Certificate',style: Textstyle1Light18.appbartextstyle.copyWith(
                              fontSize: 16,color: Appcolors.blue1),),
                          SizedBox(
                            width: 50,
                          ),
                          Image.asset('assets/Images/addIcon.png',scale: 3.5,),
                        ],
                      ),
                      onPressed: (){}
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    ),

    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Appcolors.brown1,
          border: Border.all(
            width: 0.0,
            color: Appcolors.brown1,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/Images/iconpdf.png',color: Colors.white,scale: 2,),

                SizedBox(
                  height: 19.29,
                ),

                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.blue1)
                  ),
                  child: RaisedButton(
                      color: Appcolors.brown1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Text('Upload C.V',style: Textstyle1Light18.appbartextstyle.copyWith(
                          fontSize: 16,color: Appcolors.blue1),),
                      onPressed: (){}
                  ),
                ),

                SizedBox(
                  height: 39,
                ),

                TextField(
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'Job Type',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                TextField(
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'Interests',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                TextField(
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'Company Location',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                TextField(
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'Industry',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                TextField(
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'Specialisation',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Row(
                  children: [
                    Container(
                      width: 153,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: Appcolors.grey1)
                      ),

                      child: DropdownButtonFormField(
                        decoration: InputDecoration(

                          border: InputBorder.none,

                          filled: true,

                        ),
                        value: language,

                        icon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(Icons.arrow_drop_down,),
                        ),
                        elevation: 16,
                        style: const TextStyle(color: Colors.grey,fontSize: 15),
                        onChanged: (String? newValue) {
                          language = newValue!;
                        },
                        items: <String>['Language']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    Container(
                      width: 153,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: Appcolors.grey1)
                      ),

                      child: DropdownButtonFormField(
                        decoration: InputDecoration(

                          border: InputBorder.none,

                          filled: true,

                        ),
                        value: proficiency,

                        icon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(Icons.arrow_drop_down,),
                        ),
                        elevation: 16,
                        style: const TextStyle(color: Colors.grey,fontSize: 15),
                        onChanged: (String? newValue) {
                          proficiency = newValue!;
                        },
                        items: <String>['Proficiency']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),

                  ],
                ),

                SizedBox(
                  height: 30,
                ),

                DottedBorder(
                  color: Appcolors.blue1,
                  strokeWidth: 1,
                  radius: Radius.circular(16),
                  dashPattern: [15, 15],
                  child: Container(
                    padding: EdgeInsets.only(left: 90,top: 11,bottom: 10.88),
                    child: Row(
                      children: [
                        Text('Add language',style: TextStyle(color: Colors.white),),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.add,color: Appcolors.blue1,),
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Container(
                  padding: EdgeInsets.only(left: 110),
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(

                      border: InputBorder.none,

                      filled: true,

                    ),
                    value: salary,

                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      salary = newValue!;
                    },
                    items: <String>['Salary Expectations']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Container(
                  padding: EdgeInsets.only(left: 40),
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(

                      border: InputBorder.none,

                      filled: true,

                    ),
                    value: abroad,

                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      abroad = newValue!;
                    },
                    items: <String>['I would be willing to work abroad']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    ),


    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Appcolors.brown1,
          border: Border.all(
            width: 0.0,
            color: Appcolors.brown1,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  padding: EdgeInsets.only(left: 90),
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(

                      border: InputBorder.none,

                      filled: true,

                    ),
                    value: working,

                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      working = newValue!;
                    },
                    items: <String>['I am currently working']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Container(
                  padding: EdgeInsets.only(left: 135),
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(

                      border: InputBorder.none,

                      filled: true,

                    ),
                    value: job,

                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      job = newValue!;
                    },
                    items: <String>['Job Type']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Container(
                  padding: EdgeInsets.only(left: 100),
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(

                      border: InputBorder.none,

                      filled: true,

                    ),
                    value: Employment,

                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      Employment = newValue!;
                    },
                    items: <String>['Type of Employment']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                TextField(
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'Employer',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Container(
                  padding: EdgeInsets.only(left: 100),
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(

                      border: InputBorder.none,

                      filled: true,

                    ),
                    value: Duration,

                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      Duration = newValue!;
                    },
                    items: <String>['Employment Duration']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),



                SizedBox(
                  height: 30,
                ),

                DottedBorder(
                  color: Appcolors.blue1,
                  strokeWidth: 1,
                  radius: Radius.circular(16),
                  dashPattern: [15, 15],
                  child: Container(
                    padding: EdgeInsets.only(left: 90,top: 11,bottom: 10.88),
                    child: Row(
                      children: [
                        Text('Add other Work Experience',style: Textstyle1Light18.appbartextstyle.copyWith(
                            fontSize: 16,color: Appcolors.blue1),),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.add,color: Appcolors.blue1,),
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Divider(
                  color: Appcolors.grey1,
                ),

                SizedBox(
                  height: 30,
                ),

                Container(
                  padding: EdgeInsets.only(left: 100),
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(

                      border: InputBorder.none,

                      filled: true,

                    ),
                    value: abroad1,

                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      abroad1 = newValue!;
                    },
                    items: <String>['I have studied abroad']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                TextField(
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'Studied abroad name',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                TextField(
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'University',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                TextField(
                  decoration: Inputdec1.inputDecoration.copyWith(
                    suffixIcon: Icon(Icons.add,color: Colors.white,),
                    hintText: 'Foreign Education Duration',
                    hintStyle: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 16,color: Appcolors.grey2),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Container(
                  padding: EdgeInsets.only(left: 90),
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(

                      border: InputBorder.none,

                      filled: true,

                    ),
                    value: abroad2,

                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_down,),
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey,fontSize: 15),
                    onChanged: (String? newValue) {
                      abroad2 = newValue!;
                    },
                    items: <String>['Foreign Education Duration']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                DottedBorder(
                  color: Appcolors.blue1,
                  strokeWidth: 1,
                  radius: Radius.circular(16),
                  dashPattern: [15, 15],
                  child: Container(
                    padding: EdgeInsets.only(left: 75,top: 11,bottom: 10.88),
                    child: Row(
                      children: [
                        Text('Add other abroad Experience',style: Textstyle1Light18.appbartextstyle.copyWith(
                            fontSize: 16,color: Appcolors.blue1),),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.add,color: Appcolors.blue1,),
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.grey1)
                  ),
                  child: RaisedButton(
                      color: Appcolors.brown1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 90,
                          ),
                          Text('Upload Certificate',style: Textstyle1Light18.appbartextstyle.copyWith(
                              fontSize: 16,color: Appcolors.grey2),),
                          SizedBox(
                            width: 50,
                          ),
                          Image.asset('assets/Images/addIcon.png',scale: 3.5,color: Colors.white,),
                        ],
                      ),
                      onPressed: (){}
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    ),

  ];

  static var dropdownValue = 'Male';
  static var dropdownValue1 = 'City';
  static var dropdownValue2 = 'Country';
  static var degree = 'Degree';
  static var study = 'Field of Study';
  static var work = 'Work Availability';
  static var institution = 'Scholarship Institution';
  static var language = 'Language';
  static var proficiency = 'Proficiency';
  static var salary = 'Salary Expectations';
  static var abroad = 'I would be willing to work abroad';
  static var working = 'I am currently working';
  static var job = 'Job Type';
  static var Employment = 'Type of Employment';
  static var Duration = 'Employment Duration';
  static var abroad1 = 'I have studied abroad';
  static var abroad2 = 'Foreign Education Duration';



  @override
  void initState() {
    super.initState();
    materialButton = _skipButton();
    index = 0;
  }

  Material _skipButton({void Function(int)? setIndex}) {
    return Material(
      borderRadius: defaultSkipButtonBorderRadius,
      color: Colors.transparent,
      child: InkWell(
        borderRadius: defaultSkipButtonBorderRadius,
        onTap: () {
          if (setIndex != null) {
            index = 2;
            setIndex(2);
          }
        },
        child: const Padding(
          padding: defaultSkipButtonPadding,
          child: Text(
            'Skip',
            style: defaultSkipButtonTextStyle,
          ),
        ),
      ),
    );
  }

  Material get _signupButton {
    return Material(
      borderRadius: defaultProceedButtonBorderRadius,
      color: Appcolors.blue1,
      child: InkWell(
        borderRadius: defaultProceedButtonBorderRadius,
        onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => LandingPage()));
        },
        child: const Padding(
          padding: defaultProceedButtonPadding,
          child: Text(
            'Confirm Details',
            style: defaultProceedButtonTextStyle,
          ),
        ),
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
        elevation: 0,
        toolbarHeight: 150,
        automaticallyImplyLeading: false,
        title: Text('Sign Up',style: Textstyle1Light18.appbartextstyle.copyWith(
            fontSize: 36,fontWeight: FontWeight.w500,color: Colors.white),),
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
      body: Onboarding(
        pages: onboardingPagesList,
        onPageChange: (int pageIndex) {
          index = pageIndex;
        },
        startPageIndex: 0,
        footerBuilder: (context, dragDistance, pagesLength, setIndex) {
          return DecoratedBox(
            decoration: BoxDecoration(
              color: Appcolors.brown1,
              border: Border.all(
                width: 0.0,
                color: Appcolors.brown1,
              ),
            ),
            child: ColoredBox(
              color: Appcolors.brown1,
              child: Padding(
                padding: const EdgeInsets.all(45.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomIndicator(
                          netDragPercent: dragDistance,
                          pagesLength: pagesLength,
                            indicator: Indicator(
                              indicatorDesign: IndicatorDesign.polygon(
                                polygonDesign: PolygonDesign(
                                  polygon: DesignType.polygon_circle,
                                ),
                              ),
                            )
                        ),
                        index == pagesLength - 1
                            ? _signupButton
                            : _skipButton(setIndex: setIndex)
                      ],
                    ),

                    SizedBox(
                      height: 25,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 16,color: Colors.white),),
                        Text(' Sign In',style: Textstyle1Light18.appbartextstyle.copyWith(
                            fontSize: 16,fontWeight: FontWeight.w800,color: Colors.white),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

