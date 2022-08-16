import 'package:flutter/material.dart';

class HomeItemCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final bool isSelected;
  const HomeItemCard(
      {Key? key,
      required this.icon,
      required this.title,
      required this.color,
      this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.5,
            blurRadius: 1,
            offset: const Offset(
              0,
              1,
            ),
          ),
        ],
      ),
      height: 90,
      width: 130,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Icon(
              icon,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
            child: Text(
              title,
              style:
                  TextStyle(color: isSelected ? Colors.white70 : Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
