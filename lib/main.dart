import 'package:flutter/material.dart';
import 'package:verbsnap/src/design/design.dart';
import 'package:verbsnap/src/presentation/auth/login/login_page.dart';
import 'package:verbsnap/src/presentation/auth/register/register_page.dart';
import 'package:verbsnap/src/presentation/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MaterialTheme(TextTheme()).light(),
      darkTheme: MaterialTheme(TextTheme()).dark(),
      themeMode: ThemeMode.system,
      initialRoute: LoginPage.routeName,
      routes: {
        LoginPage.routeName: (_) => const LoginPage(),
        RegisterPage.routeName: (_) => const RegisterPage(),
        HomePage.routeName: (_) => const HomePage(),
      },
    );
  }
}
