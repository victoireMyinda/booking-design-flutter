import 'package:flutter/material.dart';
import 'package:hotels/pages/home/home.dart';
import 'package:hotels/pages/home/widgets/myappbar.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dgreen,
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(children: []),
      ),
    );
  }
}
