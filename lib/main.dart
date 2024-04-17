import 'dart:io';

import 'package:flutter/material.dart';
import 'package:yuktidea/config/http_override.dart';
import 'package:yuktidea/screens/landing.dart';

void main() {
  HttpOverrides.global = CustomHttpOverride();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const LandingScreen(),
    );
  }
}
