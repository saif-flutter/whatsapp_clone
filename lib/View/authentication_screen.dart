import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/View/BottomNavigation/bottom_navigation_screen.dart';
import 'package:whatsapp_clone/Widgets/Authentication_Widgets/phone_number_widget.dart';
import 'package:whatsapp_clone/Widgets/Authentication_Widgets/select_country_widget.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              color: Color(0xffA6A6AA),
              offset: Offset(0, 0.33),

            )
          ]),
          child: AppBar(

            centerTitle: true,
            backgroundColor: const Color(0xffF6F6F6),
            elevation: 0.0,
            title:  Text('Phone number',style: TextStyle(
              color: Colors.black,fontSize: 17.sp,fontWeight: FontWeight.w700,

            )),
            actions: [
              CupertinoButton(onPressed: (){
                Navigator.push(context, CupertinoPageRoute(builder: (_){
                  return const BottomNavigationScreen();
                }));
              }, child: Text('Done',style: TextStyle(
                fontSize: 17.sp,fontWeight: FontWeight.w700,fontFamily: 'SF Pro Text',
              ),))
            ],
          ),
          
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 17.sp,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 37.sp),
            height: 40.sp,
            width: 300.sp,
            child: Text(
              'Please confirm your country code and enter your phone number',
              style: TextStyle(
              color: Colors.black,fontSize: 15.sp,fontWeight: FontWeight.w400
            ),textAlign: TextAlign.center ),
          ),
          SizedBox(height: 19.sp,),
       //Select Country Widget
          Divider(
            color: Colors.black26,
            height: 1,
          ),
          const SelectCountryWidget(),
        //Phone Number Widget
         const PhoneNumberWidget(),
        ],
      ),
    );
  }
}
