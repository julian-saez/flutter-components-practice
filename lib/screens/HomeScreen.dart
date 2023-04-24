import 'package:flutter_components_practice/router/router.dart';
import 'package:flutter_components_practice/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only( top: 35, bottom: 20 ),
            child: const Text('Where you wanna go?', style: TextStyle( fontSize: 20 ),),
          ),
          ...AppRoutes.menuOptions.map(( option ) =>
              option.route != 'home'
                ? ListTile(
                    leading: Icon( option.icon ),
                    title: Text(option.name),
                    trailing: const Icon( Icons.arrow_circle_right_outlined, color: AppTheme.primaryColor ),
                    onTap: () {
                      Navigator.pushNamed(context, option.route);
                    },
                  )
                : const SizedBox()
          ).toList(),
        ],
      ),
    );
  }
}
