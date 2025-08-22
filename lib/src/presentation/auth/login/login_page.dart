import 'package:flutter/material.dart';
import 'package:verbsnap/src/presentation/components/components.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = 'LoginPage';

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          const BackgroundColors(),
          Positioned(
            top: size.height * 0.2,
            left: 0,
            right: 0,
            bottom: 0,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text('Login Page'),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        child: const Text('Go to Register Page'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'home');
                        },
                        child: const Text('Go to Home Page'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
