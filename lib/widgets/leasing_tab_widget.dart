import 'package:flutter/material.dart';
import 'package:ge_flutter_task/widgets/search_widget.dart';

class LeasingTabWidget extends StatelessWidget {
  const LeasingTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchWidget(),
      ],
    );
  }
}
