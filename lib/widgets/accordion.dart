import 'package:flutter/material.dart';

class Accordion extends StatefulWidget {
  final String title;
  final List<Widget> content;

  const Accordion({Key? key, required this.title, required this.content})
      : super(key: key);
  @override
  AccordionState createState() => AccordionState();
}

class AccordionState extends State<Accordion> {
  bool _showContent = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text(
              widget.title,
              style: const TextStyle(color: Colors.grey),
            ),
            trailing: IconButton(
              icon: Icon(
                _showContent ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  _showContent = !_showContent;
                });
              },
            ),
          ),
          _showContent
              ? ListView(
                  shrinkWrap: true,
                  children: widget.content,
                )
              : Container()
        ],
      ),
    );
  }
}
