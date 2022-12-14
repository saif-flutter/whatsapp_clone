
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/Model/user_detail_Model.dart';

import '../../Model/user_detail_repo.dart';
import '../../Widgets/Bottom_Widget/chat_widget.dart';
import 'bottom_navigation_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<UserDetailModel> newList =[];
  @override
  void initState() {
    newList = UserDetailRepo.getUserData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            leadingWidth: 100,
            leading: Container(
                alignment: Alignment.centerLeft,
                child: CupertinoButton(child: const Text('Edit'), onPressed: () {})),
            centerTitle: true,
            backgroundColor: const Color(0xffF6F6F6),
            elevation: 0.0,
            title: Text('Chats',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                )),
            actions: [
              CupertinoButton(
                  onPressed: () {

                  },
                  child: const Icon(CupertinoIcons.ellipses_bubble))
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(

        children: [
          Expanded(
            child: Container(
              height: 50.sp,
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(child: Container(

                    alignment: Alignment.centerLeft,
                    child: CupertinoButton(child: Text('Broadcast Lists',style: TextStyle(
                      fontWeight: FontWeight.w400,fontSize: 15.sp
                    ),), onPressed: (){}),
                  )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.centerRight,
                    child: CupertinoButton(child: Text('New Group',style: TextStyle(
                        fontWeight: FontWeight.w400,fontSize: 15.sp
                    ),), onPressed: (){}),
                  ))

                ],
              ),
            ),
          ),
          Expanded(
            flex: 11,
            child: ListView.builder(
                itemCount: newList.length,
                itemBuilder: (context, index) {
                  UserDetailModel model = newList[index];
                  return   ChatWidget(data: model);
                }),
          ),
        ],
      ),
    );
  }
}
