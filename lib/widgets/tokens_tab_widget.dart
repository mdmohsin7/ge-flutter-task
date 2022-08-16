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
        const SearchWidget(),
        TokenCard(
          token: "Waves",
          amount: "5.0054",
          trailing: Image.asset(
            'assets/waves.png',
            fit: BoxFit.contain,
          ),
        ),
        const TokenCard(
          token: "Pigeon / My Token",
          amount: "1444.04556321",
          trailing: Icon(Icons.currency_bitcoin),
        ),
        TokenCard(
          token: "US Dollar",
          amount: "199.24",
          trailing: Image.asset(
            'assets/dollar.png',
            fit: BoxFit.contain,
          ),
        ),
        const Accordion(title: 'Hidden tokens (2)', content: []),
        const Accordion(title: 'Suspicious tokens (15)', content: [])
      ],
    );
  }
}
