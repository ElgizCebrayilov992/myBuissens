import 'package:flutter/material.dart';
import '../../core/base/base_statefull.dart';
import '../compenent/bezier_container.dart';
import '../compenent/custom_text_form_field.dart';
import '../compenent/submit_button_widget.dart';
import '../compenent/title_wdiget.dart';
import 'send_mail.dart';

class ForgetPage extends StatefulWidget {
  @override
  _ForgetPageState createState() => _ForgetPageState();
}

class _ForgetPageState extends BaseStatefull<ForgetPage> {
   var formKey = GlobalKey<FormState>();
  TextEditingController controllerMail = TextEditingController();
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
                 
                ],
              ),
            ),
            SizedBox(height: 20),
            CustomerMyButtonWidget(
              title: applicationStrings.search,
              colorFirst: myColor.yellowOrange,
              colorSecond: myColor.christine,
              callBack: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SendMail(),));
              },
              textColor: Colors.white,
            ),
             
       
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
