import 'package:flutter/material.dart';
import 'package:verbsnap/src/design/design.dart';
import 'package:verbsnap/src/presentation/presentation.dart';

class ComponentsPage extends StatelessWidget {
  static const String routeName = 'ComponentsPage';

  const ComponentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(ThemeSpacing.sm),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Components Page',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: InputDecorations.decoration(
                  hintText: 'Enter your email',
                  labelText: 'Email',
                  prefixIcon: Icons.email,
                ),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 16),
              TextFormField(
                autocorrect: false,
                obscureText: true,
                decoration: InputDecorations.decoration(
                  hintText: 'Enter your password',
                  labelText: 'Password',
                  prefixIcon: Icons.lock,
                ),
                textInputAction: TextInputAction.done,
              ),
              const SizedBox(height: 16),
              ButtonBase(
                width: double.infinity,
                onPressed: () {},
                text: 'Submit',
              ),
              ButtonBase(
                isDisabled: true,
                width: double.infinity,
                onPressed: () {},
                text: 'Submit',
              ),

              ButtonBase(
                isDisabled: true,
                isLoading: true,
                width: double.infinity,
                onPressed: () {},
                text: 'Submit',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
