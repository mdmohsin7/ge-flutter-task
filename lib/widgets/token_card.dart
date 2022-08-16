import 'package:flutter/material.dart';

class TokenCard extends StatelessWidget {
  final String token;
  final String amount;
  final Widget trailing;
  const TokenCard(
      {Key? key,
      required this.token,
      required this.amount,
      required this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Stack(
              children: [
                CircleAvatar(
                  backgroundColor: trailing.runtimeType == Image
                      ? Colors.transparent
                      : Colors.blue,
                  radius: 25,
                  child: trailing,
                ),
                const Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.check,
                      color: Colors.black,
                      size: 12,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  token,
                  style: const TextStyle(color: Colors.grey),
                ),
                Text(
                  amount,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
