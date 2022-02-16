import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:screen_login_purple/view/create_account_screen/controller/create_account_controller.dart';
import 'package:screen_login_purple/view/create_account_screen/view/components/terms_of_services/terms_of_services_button.dart';
import 'package:screen_login_purple/view/create_account_screen/view/components/terms_of_services/terms_of_services_text.dart';

class TermsOfServicesWidget extends StatefulWidget {
  final double height;
  final double width;

  const TermsOfServicesWidget({Key? key, this.height = 0.0, this.width = 0.0})
      : super(key: key);

  @override
  State<TermsOfServicesWidget> createState() => _TermsOfServicesWidgetState();
}

class _TermsOfServicesWidgetState extends State<TermsOfServicesWidget> {
  final controller = CreatAccountController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.green,
      height: widget.height,
      width: widget.width,
      child: LayoutBuilder(builder: (context, constraints) {
        return FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TermsOfServicesButton(
                height: constraints.maxHeight * 0.85,
                sizeBorde: constraints.maxHeight * 0.12,
                onTap: (value) {
                  controller.isChecked = value;
                },
              ),
              Container(
                width: constraints.maxWidth * 0.045,
              ),
              TermsOfServicesText(
                height: constraints.maxHeight * 0.7,
              ),
            ],
          ),
        );
      }),
    );
  }
}
