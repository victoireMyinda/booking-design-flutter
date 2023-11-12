import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotels/pages/calendar/calendar.dart';
import 'package:hotels/pages/home/home.dart';

class Seacrh extends StatelessWidget {
  const Seacrh({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.grey[200],
      padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(children: [
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "London",
                    contentPadding: EdgeInsets.all(10),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  color: Colors.green,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(0, 4),
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const CalendarScreen();
                  }));
                },
                child: Icon(Icons.search, size: 26),
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(10),
                    backgroundColor: dgreen),
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Choose date",
                        style: GoogleFonts.nunito(
                            color: Colors.grey, fontSize: 15)),
                    Text("15 mai au 15 dec",
                        style: GoogleFonts.nunito(
                            color: Colors.black, fontSize: 17))
                  ]),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Number of Rooms",
                        style: GoogleFonts.nunito(
                            color: Colors.grey, fontSize: 15)),
                    Text("1 romm - 2 adults",
                        style: GoogleFonts.nunito(
                            color: Colors.black, fontSize: 17))
                  ]),
            ),
          ],
        ),
      ]),
    );
  }
}
