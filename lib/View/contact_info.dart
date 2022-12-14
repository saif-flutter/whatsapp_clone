import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widgets/Bottom_Widget/contact_info_widget.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(88.0),
        child: SizedBox(
          height: 80,
          child:  CupertinoNavigationBar(
            backgroundColor: Colors.white,
            previousPageTitle: 'Andrew',
            middle: const Text(
              'Contact Info'),
            trailing: CupertinoButton(onPressed: (){}, child: const Text('Edit')),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 260.sp,
            color: Colors.blue,
            child: Image.asset('assets/pic.jpeg',fit: BoxFit.cover,),
          ),
          SizedBox(

            height: 60.sp,
            child: Row(
              children: [
                Expanded(flex:4,child: SizedBox(height: 200,child: Column(
                  children:  [Expanded(child: Container(alignment:Alignment.center,
                    child:  Text('Martha Craig',style: TextStyle(
                      color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w500
                    ),),
                  )),
                    Expanded(child: Container(alignment:Alignment.topCenter,
                      child: const Text('+1 202 555 0181',style: TextStyle(
                          color: Colors.grey
                      ),),
                    ))],
                ),)),
                Expanded(flex:5,child: SizedBox(height: 200,child: Row(
                  children: [
                    const Spacer(),
                    Expanded(child: Container(
                      height:30.sp,
                        width: 30.sp,
                        decoration: const BoxDecoration(
                            color:Color(0xffEDEDFF),
                          shape: BoxShape.circle
                        ),
                        child: const Center(child: Icon(CupertinoIcons.text_bubble,color: Colors.blue,)))),
                    Expanded(child: Container(
                        height:30.sp,
                        width: 30.sp,
                        decoration: const BoxDecoration(
                            color:Color(0xffEDEDFF),
                            shape: BoxShape.circle
                        ),
                        child: const Center(child: Icon(CupertinoIcons.video_camera_solid,color: Colors.blue,)))),
                    Expanded(child: Container(
                        height:30.sp,
                        width: 30.sp,
                        decoration: const BoxDecoration(
                            color:Color(0xffEDEDFF),
                            shape: BoxShape.circle
                        ),
                        child: const Icon(CupertinoIcons.phone,color: Colors.blue,))),
                  ],
                ),)),
              ],
            ),
          ),
           const Divider(
            indent: 20,
            color: Colors.black26,
            height: 0.1,
            thickness: 0.7,
          ),
          SizedBox(
            height: 55.sp,

            child: Column(
              children: [
                Expanded(child: Container(
                  alignment: Alignment.centerLeft,
               padding: EdgeInsets.only(left: 20.sp),
                  child: Text('Design adds value faster, than it adds cost',style: TextStyle(
                    fontWeight: FontWeight.w400,fontSize: 14.sp
                  ),),
                )),
                Expanded(child: Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 20.sp),
                  child: Text('Dec 18, 2018',style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,fontSize: 12.sp
                  ),),
                ))
              ],
            ),
          ),
          Container(
            color: const Color(0xffF2F2F2),
            height: 18.sp,
          ),
           const ContactInfoWidget(text: 'Media, Links, and Docs', iconData: CupertinoIcons.photo,numberText: '12', color: Color(0xff3396FD),
          ),
          const Divider(
            indent: 20,
            color: Colors.black26,
            height: 0.1,
            thickness: 0.7,
          ),

          const ContactInfoWidget(text: 'Starred Messages', iconData: CupertinoIcons.star_circle,numberText: 'None', color: Color(0xffFBB500),
          ),
          const Divider(
            indent: 20,
            color: Colors.black26,
            height: 0.1,
            thickness: 0.7,
          ),
          const ContactInfoWidget(text: 'Chat Search', iconData: CupertinoIcons.search_circle_fill,numberText: '',color: Color(0xffFE8D35),
          ),

          Container(
            color: const Color(0xffF2F2F2),
            height: 20.sp,
          ),
          const ContactInfoWidget(text: 'Mute', iconData: CupertinoIcons.volume_up,numberText: 'No',color: Color(0xff1FC434),
          )





        ],
      )
    );
  }
}