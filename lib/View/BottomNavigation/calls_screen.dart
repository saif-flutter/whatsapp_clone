
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() =>
      _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {

  Sky _selectedSegment = Sky.all;
  var check = true;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: skyColors[_selectedSegment],
      navigationBar: CupertinoNavigationBar(

        leading: Container(
          width: 2.sp,
            alignment: Alignment.centerLeft,
            child: CupertinoButton(child: const Text('Edit'), onPressed: () {})),

        middle: CupertinoSlidingSegmentedControl<Sky>(
          backgroundColor: CupertinoColors.systemGrey2,
          thumbColor: skyColors[_selectedSegment]!,
          groupValue: _selectedSegment,
          onValueChanged: (Sky? value) {
            if (value != null) {
              setState(() {
                _selectedSegment = value;

              print('------- value  ${_selectedSegment}');
               print(value);
              });
            }
          },
          children:  <Sky, Widget>{
            Sky.all:  Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),

              child: Text(
                'All',
                style: TextStyle(color: _selectedSegment == Sky.all ? CupertinoColors.white:CupertinoColors.activeBlue),
              ),
            ),
            Sky.missed: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'missed',
                style: TextStyle(color: _selectedSegment == Sky.missed ? CupertinoColors.white : CupertinoColors.activeBlue),
              ),
            ),

          },
        ),
      ),

      child: Center(
        child: Text(
          'Selected Segment: ${_selectedSegment.name}',
          style: const TextStyle(color:CupertinoColors.white),
        ),
      ),
    );

  }

}
enum Sky { all, missed }

Map<Sky, Color> skyColors = <Sky, Color>{
  Sky.all:  CupertinoColors.activeBlue,
  Sky.missed:  CupertinoColors.activeBlue

};