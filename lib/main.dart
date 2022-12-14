import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'View/authentication_screen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.


  // Get a specific camera from the list of available cameras.

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'WhatsApp Clone',
          theme: ThemeData(
            primarySwatch: Colors.blue,

          ),
          home: child,
        );
      },
      child: const AuthenticationScreen(),
    );
  }
}

