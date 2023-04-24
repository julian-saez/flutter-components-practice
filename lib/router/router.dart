import 'package:app_images/models/menu_options.dart';
import 'package:app_images/screens/LoginScreen.dart';
import 'package:app_images/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home', icon: Icons.home, name: 'Home', screen: const HomeScreen() ),
    MenuOption(route: 'list', icon: Icons.list, name: 'List', screen: const ListViewScreen() ),
    MenuOption(route: 'createUser', icon: Icons.create, name: 'Create User', screen: const CreateUserScreen() ),
    MenuOption(route: 'slider', icon: Icons.slideshow_rounded, name: 'Slider', screen: const SliderScreen() ),
    MenuOption(route: 'listViewBuilder', icon: Icons.list_alt, name: 'ListView Builder', screen: const ListViewBuilderScreen() ),
    MenuOption(route: 'infiniteScrollFuturesScreen', icon: Icons.loop, name: 'Infinite Scroll with Futures', screen: const InfiniteScrollFuturesScreen() ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for ( final option in menuOptions ) {
      appRoutes.addAll({ option.route: ( BuildContext context ) => option.screen });
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute( RouteSettings settings ) {
    return MaterialPageRoute(builder: ( context ) => const AlertScreen());
  }
}