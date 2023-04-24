import 'package:flutter_components_practice/router/router.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);
  final options = const [ 'Ford', 'Fiat', 'Mercedes Benz', 'Iveco' ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List view component'),
      ),
      body: ListView(
        children: [
          ...AppRoutes.menuOptions.map(( brand ) => ListTile(
            leading: const Icon( Icons.confirmation_num_sharp ),
            title: Text('$brand'),
            trailing: const Icon( Icons.arrow_right_outlined ),
          ), ).toList(),
        ],
      ),
    );
  }
}
