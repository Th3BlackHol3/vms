import 'package:flutter/material.dart';
import 'package:vms/splash_screen.dart';

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: const SplashScreen()
    );
  }
}
