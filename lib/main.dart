import 'package:flutter/material.dart';
import 'package:screen_login_purple/view/create_account_screen/view/create_account_page.dart';
import 'package:screen_login_purple/view/welcome_screen/welcome_page.dart';

import 'view/login_sceen/view/screen_login_page.dart';

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
        '/': (context) => const ScreenLoginPage(),
        '/createAccount': (context) => const CreateAccountPage(),
        '/welcome': (context) => const WelcomePage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
