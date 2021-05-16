import 'package:flutter/material.dart';
import '../core/base/base_statefull.dart';
import 'compenent/accountLabel.dart';
import 'compenent/submit_button_widget.dart';

import 'compenent/bezier_container.dart';
import 'compenent/custom_text_form_field.dart';
import 'compenent/title_wdiget.dart';
import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends BaseStatefull<SignUpPage> {
  var formKey = GlobalKey<FormState>();
  TextEditingController controllerMail = TextEditingController();
  TextEditingController controllerCompanyName = TextEditingController();
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerPhone = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  bool _isPassword=true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        //      color: Colors.green,
        height: height,
        child: Stack(
          children: <Widget>[
            buildPositionedImage(context),
            buildContainerBody(height),
            buildPositionedBackButton(),
          ],
        ),
      ),
    );
  }

  Positioned buildPositionedBackButton() => Positioned(top: 40, left: 0, child: BackButton());

  Container buildContainerBody(double height) {
    return Container(
            // color: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: height * .2),
                  TitleWdiget(
                    textColor: myColor.christine,
                  ),
                  buildForm(),
                  CustomerMyButtonWidget(
                        title: applicationStrings.registerNow,
                        colorFirst: myColor.yellowOrange,
                        colorSecond: myColor.christine,
                        callBack: () {},
                        textColor: myColor.whiteColor),
                  AccountLabel(
                      page: LoginPage(),
                      textLabel: applicationStrings.already,
                      textButtonLabel: applicationStrings.loginButton,
                      textButtonLabelColor: myColor.yellowOrange),
                ],
              ),
            ),
          );
  }

  Form buildForm() {
    return Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomertextFormField(
                        title: applicationStrings.companyName,
                        inputType: TextInputType.text,
                        autovalidateMode: AutovalidateMode.always,
                        validator: (value) {
                           if (value!.length <= 3) {
                        return "Ən az 3 hərf olmalıdır";
                      } else {
                        return null;
                      }
                        },
                        controller: controllerCompanyName,
                      ),
                      CustomertextFormField(
                        title: applicationStrings.name,
                        inputType: TextInputType.text,
                        autovalidateMode: AutovalidateMode.always,
                        validator: (value) {
                           if (value!.length <= 3) {
                        return "Ən az 3 hərf olmalıdır";
                      } else {
                        return null;
                      }
                        },
                        controller: controllerName,
                      ),
                      CustomertextFormField(
                        title: applicationStrings.phone,
                        inputType: TextInputType.phone,
                        autovalidateMode: AutovalidateMode.disabled,
                        validator: (value) =>value!.isValidPhone()
                        ? null
                        : "nömrənizi düzgün yazın",
                        controller: controllerPhone,
                      ),
                      CustomertextFormField(
                        title: applicationStrings.mail,
                        inputType: TextInputType.emailAddress,
                        autovalidateMode: AutovalidateMode.disabled,
                        validator: (value) {},
                        controller: controllerMail,
                      ),
                      CustomertextFormField(
                        title: applicationStrings.password,
                        inputType: TextInputType.text,
                        autovalidateMode: AutovalidateMode.always,
                        validator: (value) {},
                        controller: controllerPassword,
                        isPassword: _isPassword,
                        icon: IconButton(
                          color: myColor.christine,
                          icon: Icon(_isPassword
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isPassword = !_isPassword;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                );
  }

  Positioned buildPositionedImage(BuildContext context) {
    return Positioned(
            top: -MediaQuery.of(context).size.height * .16,
            right: -MediaQuery.of(context).size.width * .4,
            child: BezierContainer(),
          );
  }


}

