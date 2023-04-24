import 'package:flutter_components_practice/router/router.dart';
import 'package:flutter_components_practice/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp( MyApp() );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Random',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme
    );
  }
}
