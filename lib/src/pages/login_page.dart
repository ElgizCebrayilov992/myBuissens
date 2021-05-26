import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../core/base/base_statefull.dart';
import '../compenent/accountLabel.dart';
import '../compenent/bezier_container.dart';
import '../compenent/custom_text_form_field.dart';
import '../compenent/submit_button_widget.dart';
import '../compenent/title_wdiget.dart';
import 'forget_page.dart';
import 'sign_up.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends BaseStatefull<LoginPage> {
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
        buildPositionedImage(height, context),
        buildContainer(height),
        buildPositionedBackButton(),
      ],
    );
  }

  Positioned buildPositionedBackButton() =>
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
              textColor: myColor.yellowOrange,
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
              colorFirst: myColor.yellowOrange,
              colorSecond: myColor.christine,
              callBack: () {
                Logger().wtf("message");
              },
              textColor: Colors.white,
            ),
               InkWell(onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPage(),),);
               },
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

  Positioned buildPositionedImage(double height, BuildContext context) {
    return Positioned(
        top: -height * .15,
        right: -MediaQuery.of(context).size.width * .4,
        child: BezierContainer());
  }
}
