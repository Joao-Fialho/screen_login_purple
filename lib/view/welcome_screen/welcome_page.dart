import 'package:flutter/material.dart';
import 'package:screen_login_purple/view/style.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: cPrimaryColor,
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: size.height * 0.2,
          width: size.width * 0.85,
          child: LayoutBuilder(builder: (context, constrains) {
            return Text(
              'Welcome',
              style: TextStyle(
                color: Colors.white,
                fontSize: constrains.maxHeight * 0.5,
              ),
            );
          }),
        ),
      ),
    );
  }
}
