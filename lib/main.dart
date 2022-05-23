import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onboarding_screens/pages/walkthrough4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        builder: (child) {
          return MaterialApp(
              theme: ThemeData(
                  primaryColor: const Color(0xff5BEFBD),
                  checkboxTheme: CheckboxThemeData(
                      fillColor:
                          MaterialStateProperty.all(const Color(0xff5BEFBD)))),
              debugShowCheckedModeBanner: false,
              home: const Walkthrough4());
        });
  }
}
