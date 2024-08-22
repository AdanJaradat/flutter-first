import 'package:flutter/material.dart';
import 'package:flutter_application/theme/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class MyBox extends StatelessWidget {
  const MyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Theme.of(context).colorScheme.secondary,
        width: 200,
        height: 200,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
                Theme.of(context).colorScheme.primary),
          ),
          child: Center(
              child: Text(
            'TAP',
            style: TextStyle(
                color: Theme.of(context).colorScheme.secondary, fontSize: 20),
          )),
          onPressed: () {
            Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
          },
        ),
      ),
    );
  }
}
