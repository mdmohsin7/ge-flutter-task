import 'package:flutter/material.dart';

class Accordion extends StatefulWidget {
  final String title;
  final String content;

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
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text(widget.title),
            trailing: IconButton(
              icon: Icon(
                  _showContent ? Icons.arrow_drop_up : Icons.arrow_drop_down),
              onPressed: () {
                setState(() {
                  _showContent = !_showContent;
                });
              },
            ),
          ),
          _showContent
              ? Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Text(widget.content),
                )
              : Container()
        ],
      ),
    );
  }
}
