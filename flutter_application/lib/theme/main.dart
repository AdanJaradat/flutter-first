import 'package:flutter/material.dart';
import 'package:flutter_application/theme/mybox.dart';
import 'package:flutter_application/theme/provider/theme_provider.dart';
import 'package:flutter_application/theme/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: ThemeDataExampleApp(),
  ));
}

class ThemeDataExampleApp extends StatelessWidget {
  const ThemeDataExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: lightMode,
      // darkTheme: darkMode,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: MyBox(),
    );
  }
}
