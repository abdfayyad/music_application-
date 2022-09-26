import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_application/src/features/Verify_screen/prisentation/verify_screen.dart';
import 'package:music_application/src/features/signup_screen/prisentation/signup.dart';
import 'package:music_application/src/util/style/them.dart';

import 'src/features/login_screen/prisentation/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(348, 743),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
            theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: ThemeMode.light,
          home: child,
        );
      },
      child:  VerifyScreen(),
    );
  }
}

