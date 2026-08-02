import 'package:flutter/material.dart';
import 'login.dart';
import 'package:provider/provider.dart';

import 'nav.dart';
import 'nav_provider.dart';
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => NavProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
    );
  }
}

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => Page1();
}

class Page1 extends State<StartScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Login(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Image.asset(
            "assets/images/Screenshot 2026-07-27 040039.png",
          ),
        ),
      ),
    );
  }
}