import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routeName = 'HomePage';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to the Home Page!'),
            SizedBox(height: 20),
            Text('This is where you can find the main content of the app.'),
          ],
        ),
      ),
    );
  }
}
