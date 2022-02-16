import 'package:flutter/material.dart';
import 'package:screen_login_purple/view/components/sign/sign_button.dart';
import 'package:screen_login_purple/view/components/sign/sign_text.dart';
import 'package:screen_login_purple/view/create_account_screen/controller/create_account_controller.dart';

class SignUpWidget extends StatefulWidget {
  final double sizeFont;
  final double height;
  final double width;
  const SignUpWidget(
      {Key? key, this.sizeFont = 25, this.height = 0.745, this.width = 0.0})
      : super(key: key);

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  final controller = CreatAccountController();

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: SizedBox(
        // color: Colors.red,
        height: widget.height,
        width: widget.width,
        child: LayoutBuilder(builder: (context, constraints) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SignText(
                sizeFont: constraints.maxHeight * 0.3,
                textSign: 'Sign Up',
              ),
              SignButton(
                height: constraints.maxHeight * 1,
                onTap: () {
                  setState(() {
                    if ((controller.formKey.currentState?.validate() ??
                            false) &&
                        controller.isChecked) {
                      Navigator.pushReplacementNamed(context, '/welcome');
                    }
                  });
                },
              ),
            ],
          );
        }),
      ),
    );
  }
}
