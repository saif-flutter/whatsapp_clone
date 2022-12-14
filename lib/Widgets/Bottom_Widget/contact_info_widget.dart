import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactInfoWidget extends StatefulWidget {
final  String text;
final  IconData iconData;
final Color color;

final String? numberText;
  const ContactInfoWidget({Key? key,required this.color,required this.text,required this.iconData,this.numberText}) : super(key: key);

  @override
  State<ContactInfoWidget> createState() => _ContactInfoWidgetState();
}

class _ContactInfoWidgetState extends State<ContactInfoWidget> {


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47.sp,
      child: Row(
        children:  [
          Expanded(child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
              color: widget.color,
            ),
              margin: EdgeInsets.only(left: 20.sp),
              alignment: Alignment.centerRight,

              height: 29.sp,width: 29.sp,
              child:  Center(child: Icon(widget.iconData,color: Colors.white,)))),
          Expanded(flex:5,child: Container(
        padding: EdgeInsets.only(left: 20.sp),
              alignment: Alignment.centerLeft,
              child: Text(widget.text,style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400)))),
          Expanded(child: Container(
              alignment: Alignment.centerRight,child: Text(widget.numberText.toString(),style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Colors.grey),))),
          Expanded(child: Icon(CupertinoIcons.forward,color: Colors.grey,size: 20.sp,)),

        ],
      ),
    );
  }
}
