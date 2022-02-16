import 'package:flutter/material.dart';
import 'package:screen_login_purple/view/style.dart';

class TermsOfServicesText extends StatelessWidget {
  final double sizeFont;
  final double height;
  const TermsOfServicesText({Key? key, this.sizeFont = 14, this.height = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      // color: Colors.white,
      child: LayoutBuilder(builder: (context, constraints) {
        return FittedBox(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black),
              children: [
                const TextSpan(text: 'I agree to the '),
                TextSpan(
                  text: 'Terms of Service ',
                  style: TextStyle(
                    color: cTermsPolicyColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(text: 'and '),
                TextSpan(
                  text: 'Privacy Policy ',
                  style: TextStyle(
                    color: cTermsPolicyColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
