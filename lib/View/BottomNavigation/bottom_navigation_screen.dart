import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/View/BottomNavigation/chat_screen.dart';
import 'package:whatsapp_clone/View/BottomNavigation/setting_screen.dart';
import 'package:whatsapp_clone/View/BottomNavigation/status_screen.dart';

import 'calls_screen.dart';
import 'camera_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  List<Widget> data = [
    const StatusScreen(),
    const CallsScreen(),
    const CameraScreen(),
    const ChatScreen(),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            backgroundColor: const Color(0xffF6F6F6),
            activeColor: Colors.blue,
            inactiveColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.arrow_2_circlepath_circle),
                label: "Status",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.phone),
                label: "Calls",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.photo_camera),
                label: "Camera",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_2),
                label: "Chats",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings_solid),
                label: "Setting",
              ),
            ],
          ),
          tabBuilder: (context, index) {
            return CupertinoTabView(
              builder: (context) {
                return data[index];
              },
            );
          },
        ));
  }
}
