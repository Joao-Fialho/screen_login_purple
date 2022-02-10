import 'package:flutter/material.dart';
import 'package:screen_login_purple/login_sceen/screen_login_page.dart';
import 'package:screen_login_purple/welcome_screen/welcome_page.dart';

import 'create_account_screen/create_account_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenLoginPage(),
        '/createAccount': (context) => CreateAccountPage(),
        '/welcome': (context) => WelcomePage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
