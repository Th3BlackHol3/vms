import 'package:flutter/material.dart';
import 'package:vms/navigation.dart';

import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double opacity = 1.0;

  changeOpacity() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        opacity = opacity == 0.0 ? 1.0 : 0.0;
        changeOpacity();
      });
    });
  }

  @override
  void initState() {
    super.initState();

    changeOpacity();

    Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder: (context) =>
          Home()),
          (Route<dynamic> route) => false
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedOpacity(
          opacity: opacity,
          duration: const Duration(seconds: 1),
          child: const Text("Visitor Management System",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 48,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.center
          ),
        ),
      ),
    );
  }
}
