import 'package:flutter/material.dart';
import 'package:hotels/pages/home/home.dart';

class Seacrh extends StatelessWidget {
  const Seacrh({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
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
                onPressed: () {},
                child: Icon(Icons.search),
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(), backgroundColor: dgreen),
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Container(
          height: 50,
          color: Colors.red,
        ),
      ]),
    );
  }
}
