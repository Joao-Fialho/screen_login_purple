import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:screen_login_purple/login_sceen/components/remember_me/remember_me_button.dart';
import 'package:screen_login_purple/login_sceen/components/remember_me/remember_me_text.dart';
import 'package:screen_login_purple/login_sceen/style.dart';

class RememberMeWidget extends StatefulWidget {
  final double height;
  final double width;

  const RememberMeWidget({Key? key, this.height = 0.0, this.width = 0.0})
      : super(key: key);

  @override
  State<RememberMeWidget> createState() => _RememberMeWidgetState();
}

class _RememberMeWidgetState extends State<RememberMeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      height: widget.height,
      width: widget.width,
      child: LayoutBuilder(builder: (context, constraints) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RememberMeButton(
              height: constraints.maxHeight * 0.9,
              sizeBorde: constraints.maxHeight * 0.12,
            ),
            SizedBox(
              width: constraints.maxWidth * 0.1,
            ),
            RememberMeText(
              height: constraints.maxHeight * 0.7,
            ),
          ],
        );
      }),
    );
  }
}
