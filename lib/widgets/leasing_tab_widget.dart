import 'package:flutter/material.dart';
import 'package:ge_flutter_task/widgets/accordion.dart';
import 'package:ge_flutter_task/widgets/leasing_card.dart';
import 'package:ge_flutter_task/widgets/search_widget.dart';

class LeasingTabWidget extends StatelessWidget {
  const LeasingTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SearchWidget(),
        LeasingCard(),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: Card(
            elevation: 2,
            child: ListTile(
              title: Text(
                'View history',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ),
        Accordion(title: "Active Now (2)", content: [])
      ],
    );
  }
}
