import 'package:flutter/material.dart';
import 'package:ge_flutter_task/widgets/accordion.dart';
import 'package:ge_flutter_task/widgets/search_widget.dart';
import 'package:ge_flutter_task/widgets/token_card.dart';

class TokensTabWidget extends StatelessWidget {
  const TokensTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchWidget(),
        TokenCard(),
        Accordion(title: 'Hidden tokens (2)', content: ''),
        Accordion(title: 'Suspicious tokens (15)', content: '')
      ],
    );
  }
}
