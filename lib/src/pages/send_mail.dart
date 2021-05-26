import 'package:flutter/material.dart';
import '../../core/base/base_statefull.dart';
import '../../core/enums/send_mail_enum.dart';
import '../compenent/bezier_container.dart';
import '../compenent/custom_text_form_field.dart';
import '../compenent/submit_button_widget.dart';
import '../compenent/title_wdiget.dart';

class SendMail extends StatefulWidget {
  @override
  _SendMailState createState() => _SendMailState();
}

class _SendMailState extends BaseStatefull<SendMail> {
 SingingCharacter? _character = SingingCharacter.CALL;
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
                  buildListTileCheck(title: applicationStrings.facebook,valueSelect: SingingCharacter.FACEBOOK),
                  buildListTileCheck(title: applicationStrings.whatsapp,valueSelect: SingingCharacter.WHATSAPP),
                  buildListTileCheck(title: applicationStrings.call,valueSelect: SingingCharacter.CALL),
                  buildListTileCheck(title: applicationStrings.email,valueSelect: SingingCharacter.EMAIL),
                    buildListTileCheck(title: applicationStrings.telegram,valueSelect: SingingCharacter.TELEGRAM),
                  CustomertextFormField(
                      title: applicationStrings.contactMail,
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

  ListTile buildListTileCheck({required String title,var valueSelect,}) {
    return ListTile(
    
        title:  Text(title),
        leading: Radio<SingingCharacter>(
          
          value: valueSelect,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
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
