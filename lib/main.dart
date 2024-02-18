import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: ((context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter BMI',
          theme: ThemeData(
            primaryColor: const Color(0xFF0D2B7A),
          ),
          home: const HomeScreen(),
        );
      }),
    );
  }
}
