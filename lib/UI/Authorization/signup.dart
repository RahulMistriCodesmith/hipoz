import 'package:flutter/material.dart';
import 'package:hipoz/Commponets/Colors/Colors.dart';
import 'package:hipoz/Commponets/Fonts/Fonts.dart';
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

                    /*Container(
                      width: 153,
                      height: 48,
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
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
                    ),*/

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

                    /*Container(
                      width: 153,
                      height: 48,
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
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
                    ),*/

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

                    /*Container(
                      width: 153,
                      height: 48,
                      child: DropdownButtonFormField<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),

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
                    ),*/

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
          color: background,
          border: Border.all(
            width: 0.0,
            color: background,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 90.0,
                ),
                child: Image.asset('assets/images/instagram.png',
                    color: pageImageColor),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'EASY ACCESS',
                    style: pageTitleStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Reach your files anytime from any devices anywhere',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ];

  String dropdownValue = 'Male';

  @override
  void initState() {
    super.initState();
    materialButton = _skipButton();
    index = 0;
  }

  Material _skipButton({void Function(int)? setIndex}) {
    return Material(
      borderRadius: defaultSkipButtonBorderRadius,
      color: defaultSkipButtonColor,
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
      color: defaultProceedButtonColor,
      child: InkWell(
        borderRadius: defaultProceedButtonBorderRadius,
        onTap: () {},
        child: const Padding(
          padding: defaultProceedButtonPadding,
          child: Text(
            'Sign up',
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
        title: Text('Sign in',style: Textstyle1Light18.appbartextstyle.copyWith(
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
              color: background,
              border: Border.all(
                width: 0.0,
                color: background,
              ),
            ),
            child: ColoredBox(
              color: background,
              child: Padding(
                padding: const EdgeInsets.all(45.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIndicator(
                      netDragPercent: dragDistance,
                      pagesLength: pagesLength,
                      indicator: Indicator(
                        indicatorDesign: IndicatorDesign.line(
                          lineDesign: LineDesign(
                            lineType: DesignType.line_uniform,
                          ),
                        ),
                      ),
                    ),
                    index == pagesLength - 1
                        ? _signupButton
                        : _skipButton(setIndex: setIndex)
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

