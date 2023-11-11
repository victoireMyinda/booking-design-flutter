import 'package:flutter/material.dart';

const dgreen = Color(0xFF54D3C2);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hotels Booking",
      home: Scaffold(
        backgroundColor: dgreen,
        appBar: AppBar(title: const Text("Page home")),
      ),
    );
  }
}
