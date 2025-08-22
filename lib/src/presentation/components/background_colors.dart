import 'package:flutter/material.dart';

class BackgroundColors extends StatelessWidget {
  const BackgroundColors({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Theme.of(context).colorScheme.primaryContainer);
  }
}
