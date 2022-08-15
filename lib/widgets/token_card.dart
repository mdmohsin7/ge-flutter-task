import 'dart:ui';

import 'package:flutter/material.dart';

class TokenCard extends StatelessWidget {
  const TokenCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 2,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Stack(
              children: [
                CircleAvatar(
                  radius: 25,
                ),
                Positioned(
                  child: Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 16,
                  ),
                  bottom: 0,
                  right: 0,
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Waves"),
                Text(
                  "5.9797",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
