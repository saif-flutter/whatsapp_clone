import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneNumberWidget extends StatelessWidget {
  const PhoneNumberWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration:  BoxDecoration(border: Border.all(color: Colors.black26)),
      height: 50.sp,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: TextField(
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.sp,
              ),
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                hintText: '+92',
              ),
            ),
          ),
          const VerticalDivider(
            color: Colors.black,
            width: 10,
          ),
          Expanded(
            flex: 4,
            child: CupertinoTextField(
              decoration: BoxDecoration(
                border: Border.all(width: 0,style: BorderStyle.none)
              ),
              keyboardType: TextInputType.number,
              padding: const EdgeInsets.only(top: 15,bottom:7),
              style: TextStyle(color: Colors.black,fontSize: 22.sp,fontWeight: FontWeight.w300
              ),
              placeholder: '  phone number',
              placeholderStyle: TextStyle(fontSize: 20.sp,color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
