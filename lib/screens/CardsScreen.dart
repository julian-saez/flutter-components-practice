import 'package:flutter_components_practice/widgets/custom_card_type_one.dart';
import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: ListView(
        children: const [
          CustomCardTypeOne(imageUrl: 'https://asndnaind.png')
        ],
      ),
    );
  }
}
