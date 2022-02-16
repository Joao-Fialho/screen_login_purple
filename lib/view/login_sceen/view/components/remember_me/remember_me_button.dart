import 'package:flutter/material.dart';
import 'package:screen_login_purple/view/style.dart';

class RememberMeButton extends StatefulWidget {
  final double height;
  final double sizeBorde;
  const RememberMeButton({Key? key, this.height = 0, this.sizeBorde = 0.0})
      : super(key: key);

  @override
  State<RememberMeButton> createState() => _RememberMeButtonState();
}

class _RememberMeButtonState extends State<RememberMeButton> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: GestureDetector(
        onTap: () {
          setState(() {
            checkBoxValue = !checkBoxValue;
          });
        },
        child: Container(
          height: widget.height,
          width: widget.height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: cPrimaryColor,
              width: widget.sizeBorde,
            ),
          ),
          child: LayoutBuilder(builder: (context, constraints) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: constraints.maxHeight * 0.7,
              width: constraints.maxHeight * 0.7,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: checkBoxValue ? cPrimaryColor : Colors.transparent,
                shape: BoxShape.circle,
              ),
            );
          }),
        ),
      ),
    );
  }
}
