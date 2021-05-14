import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:my_business/core/base/base_statefull.dart';
import 'package:my_business/src/compenent/accountLabel.dart';
import 'package:my_business/src/compenent/custom_text_form_field.dart';
import 'package:my_business/src/compenent/submit_button_widget.dart';
import 'package:my_business/src/compenent/title_wdiget.dart';
import 'package:my_business/src/sign_up.dart';

import 'compenent/bezier_container.dart';
class ForgetPage extends StatefulWidget {
  @override
  _ForgetPageState createState() => _ForgetPageState();
}

class _ForgetPageState extends BaseStatefull<ForgetPage> {
   var formKey = GlobalKey<FormState>();
  TextEditingController controllerMail = TextEditingController();
  TextEditingController controllerPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      height: height,
      child: buildStack(height, context),
    ));
  }

  Stack buildStack(double height, BuildContext context) {
    return Stack(
      children: <Widget>[
        buildPositioned(height, context),
        buildContainer(height),
        buildPositionedBack(),
      ],
    );
  }

  Positioned buildPositionedBack() =>
      Positioned(top: 40, left: 0, child: BackButton());

  Container buildContainer(double height) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: height * .2),
            TitleWdiget(
              textColor: myColor.gradientColorSecond,
            ),
            SizedBox(height: 50),
            Form(
              key: formKey,
              child: Column(
                children: [
                  CustomertextFormField(
                      title: applicationStrings.mail,
                      inputType: TextInputType.emailAddress,
                      autovalidateMode: AutovalidateMode.disabled,
                      validator: (value) {},
                      controller: controllerMail),
                  CustomertextFormField(
                      title: applicationStrings.password,
                      inputType: TextInputType.text,
                      autovalidateMode: AutovalidateMode.disabled,
                      validator: (value) {},
                      controller: controllerMail)
                ],
              ),
            ),
            SizedBox(height: 20),
            CustomerMyButtonWidget(
              title: applicationStrings.loginButton,
              colorFirst: myColor.gradientColorFirst,
              colorSecond: myColor.welcomeLoginTextColor,
              callBack: () {
                Logger().wtf("message");
              },
              textColor: Colors.white,
            ),
               InkWell(onTap: () => Logger().wtf("unutdum"),
                          child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.centerRight,
                child: Text(applicationStrings.forgotPassword,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
              ),
            ),
            AccountLabel(
                page: SignUpPage(),
                textLabel: applicationStrings.dontHave,
                textButtonLabel: applicationStrings.registerNow,
                textButtonLabelColor: myColor.loginPageRegisterTextColor),
          ],
        ),
      ),
    );
  }

  Positioned buildPositioned(double height, BuildContext context) {
    return Positioned(
        top: -height * .15,
        right: -MediaQuery.of(context).size.width * .4,
        child: BezierContainer());
  }
}
