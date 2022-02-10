import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:screen_login_purple/create_account_screen/components/remember_me_ca/remember_me_button_ca.dart';
import 'package:screen_login_purple/create_account_screen/components/remember_me_ca/remember_me_text_ca.dart';

class RememberMeWidgetCa extends StatefulWidget {
  final double height;
  final double width;

  const RememberMeWidgetCa({Key? key, this.height = 0.0, this.width = 0.0})
      : super(key: key);

  @override
  State<RememberMeWidgetCa> createState() => _RememberMeWidgetCaState();
}

class _RememberMeWidgetCaState extends State<RememberMeWidgetCa> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      height: widget.height,
      width: widget.width,
      child: LayoutBuilder(builder: (context, constraints) {
        return FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RememberMeButtonCa(
                height: constraints.maxHeight * 0.85,
                sizeBorde: constraints.maxHeight * 0.12,
              ),
              Container(
                width: constraints.maxWidth * 0.045,
              ),
              RememberMeTextCa(
                height: constraints.maxHeight * 0.7,
              ),
            ],
          ),
        );
      }),
    );
  }
}
