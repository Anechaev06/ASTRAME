import 'package:astrame/src/core/themes/app_theme.dart';
import 'package:astrame/src/home/screens/home.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
