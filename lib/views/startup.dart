import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psms/views/login.dart';

class StartupPage extends StatefulWidget {
  const StartupPage({super.key});

  @override
  State<StartupPage> createState() => _StartupPageState();
}

class _StartupPageState extends State<StartupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Image.asset(
                "assets/images/crocodile.png",
                width: MediaQuery.of(context).size.width * 0.5,
              ),
            ),
            const Text(
              "Croco Gra Gra",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 15, 0, 50),
              child: const Text(
                "Can't seem to just be your true-self?\nLet us help you change that",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.05,
              margin: const EdgeInsets.only(bottom: 15),
              child: ElevatedButton(
                onPressed: () {
                  Get.to(const LoginPage());
                },
                child: const Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.05,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(
                  "SIGN UP",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
