import 'package:flutter/material.dart';
import 'package:navigasi/homepage.dart';
import 'package:navigasi/slacing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Menampilkan GetStartedPage sebagai halaman awal
      home: const GetStartedPage(),
    );
  }
}
