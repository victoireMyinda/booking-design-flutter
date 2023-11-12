import 'package:flutter/material.dart';
import 'package:hotels/pages/home/widgets/hotel.dart';
import 'package:hotels/pages/home/widgets/myappbar.dart';
import 'package:hotels/pages/home/widgets/search.dart';

const dgreen = Color(0xFF54D3C2);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dgreen,
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          const Seacrh(),
          Hotel(),
        ]),
      ),
    );
  }
}
