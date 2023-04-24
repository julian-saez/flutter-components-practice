import 'package:flutter/material.dart';

class CustomCardTypeOne extends StatelessWidget {
  final String imageUrl;

  const CustomCardTypeOne({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: const [
          ListTile(
            leading: Icon( Icons.add ),
            title: Text( 'Soy un titulo' ),
            subtitle: Text( 'Platea facilis dui patrioque nonumes. Vocent pertinacia praesent omittantur cursus taciti penatibus tale. Mediocritatem efficiantur eos pulvinar ligula pertinax faucibus quisque molestie suscipiantur.' ),
          )
        ],
      ),
    );
  }
}
