import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectCountryWidget extends StatelessWidget {
  const SelectCountryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration:  const BoxDecoration(
          border: Border.fromBorderSide(BorderSide.none)

      ),
      height: 48.sp,
      child: Row(
        children: [
          Expanded(
              flex: 5,
              child: Container(
                alignment: Alignment.topLeft,

                child: CupertinoButton(child: Text('United Stated',style: TextStyle(
                    fontWeight: FontWeight.w400,fontSize: 17.sp
                ),), onPressed: (){}),
              )),
          const Expanded(child: Icon(CupertinoIcons.forward,color: Colors.grey,))
        ],
      ),
    );
  }
}
