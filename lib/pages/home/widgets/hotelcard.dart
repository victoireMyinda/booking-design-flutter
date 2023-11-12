import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotels/pages/home/home.dart';

class HotelCard extends StatelessWidget {
  final Map hotelData;

  const HotelCard(this.hotelData);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(18)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 4,
            blurRadius: 6,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18)),
                image: DecorationImage(
                    image: AssetImage(hotelData['image']), fit: BoxFit.cover)),
            child: Stack(
              children: [
                Positioned(
                    top: 5,
                    right: -15,
                    child: MaterialButton(
                      color: Colors.white,
                      shape: const CircleBorder(),
                      onPressed: () {},
                      child: const Icon(
                        Icons.favorite_outline_rounded,
                        color: dgreen,
                        size: 20,
                      ),
                    ))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotelData['title'],
                  style: GoogleFonts.nunito(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text(
                  hotelData['price'],
                  style: GoogleFonts.nunito(
                      fontSize: 18, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotelData['place'],
                  style: GoogleFonts.nunito(
                      color: Colors.grey[500],
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.place,
                      color: dgreen,
                      size: 14.0,
                    ),
                    Text(
                      hotelData['distance'].toString() + ' to city',
                      style: GoogleFonts.nunito(
                          color: Colors.grey[500],
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Text(
                  "per night",
                  style: GoogleFonts.nunito(
                      color: Colors.grey.shade800,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 3, 10, 10),
            child: Row(
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.star_rate,
                      color: dgreen,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: dgreen,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: dgreen,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: dgreen,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_border,
                      color: dgreen,
                      size: 14,
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Text(
                  hotelData['review'].toString() + ' reviews',
                  style: GoogleFonts.nunito(
                      color: Colors.grey[500],
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
