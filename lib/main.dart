import 'package:flutter/material.dart';
import 'package:hotels/pages/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hotels Booking",
      home: HomeScreen(),
    );
  }
}
