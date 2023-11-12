import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotels/pages/home/home.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 2000,
      color: Colors.white,
      child: Column(children: [
        Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "550 hotels founds",
                style: GoogleFonts.nunito(color: Colors.black, fontSize: 15),
              ),
              Row(
                children: [
                  Text("Filter",
                      style: GoogleFonts.nunito(
                          color: Colors.black, fontSize: 15)),
                  const IconButton(
                      onPressed: null,
                      icon: Icon(Icons.filter_list_outlined,
                          color: dgreen, size: 25))
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
