import 'package:flutter/material.dart';

class MyOrderTanish extends StatelessWidget {
  const MyOrderTanish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Text(
                "Delivery Charges",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10, top: 10),
              child: Text(
                "\$49",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10, bottom: 15),
              child: Text(
                "Taxes",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10, top: 10, bottom: 15),
              child: Text(
                "\$64.87",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 15, bottom: 20),
              child: Text(
                "Grand Total",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white70,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
