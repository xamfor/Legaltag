import 'package:flutter/material.dart';
import 'package:legaltag/login_page.dart';
import 'package:legaltag/main_frame_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
    );
  }
}
