import 'package:flutter/material.dart';

class ComponentsPage extends StatelessWidget {
  static const String routeName = 'ComponentsPage';

  const ComponentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Components')),
      body: Center(
        child: Text(
          'Components Page',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
