import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotels/pages/home/home.dart';
import 'package:hotels/pages/home/widgets/hotelcard.dart';

class Hotel extends StatelessWidget {
  final List hotelList = [
    {
      'title': 'Grand roy hotel',
      'place': 'webley, London',
      'distance': 3,
      'review': 15,
      'image': 'images/hotel1.jpg',
      'price': '180'
    },
    {
      'title': 'Fleuve congo hotel',
      'place': 'DRC, Kinshasa',
      'distance': 3,
      'review': 55,
      'image': 'images/hotel2.jpg',
      'price': '100'
    },
    {
      'title': 'Grand hotel',
      'place': 'Kinshasa',
      'distance': 3,
      'review': 15,
      'image': 'images/hotel3.jpg',
      'price': '110'
    },
    {
      'title': 'Rotana',
      'place': 'Kinshasa, Gombe',
      'distance': 3,
      'review': 40,
      'image': 'images/hotel4.jpg',
      'price': '100'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 1150,
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
        Column(
          children: hotelList.map((hotel) {
            return HotelCard(hotel);
          }).toList(),
        )
      ]),
    );
  }
}
