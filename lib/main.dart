import 'package:flutter/material.dart';
import 'pavlova_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // ปิด DEBUG Banner
      home: Scaffold(
        appBar: AppBar(
          title: const Text("จิดาภา 1103"),
          backgroundColor: const Color.fromARGB(255, 226, 196, 141),
        ),
        body: const PavlovaWidget(),
      ),
    );
  }
}
