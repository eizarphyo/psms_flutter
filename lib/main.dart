import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psms/utils/colors.dart';
import 'package:psms/views/login.dart';
import 'package:psms/views/startup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: primaryColor),
      initialRoute: "/",
      routes: {
        "/": (context) => const StartupPage(),
        "login": (context) => const LoginPage(),
      },
    );
  }
}
