import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vms/app.dart';
import 'package:vms/colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: lightBlueColor,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark
    )
  );
  runApp(const MyApp());
}