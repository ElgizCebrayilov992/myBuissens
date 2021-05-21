import 'package:flutter/material.dart';
import 'package:my_business/core/base/base_statefull.dart';
import 'package:my_business/src/compenent/submit_button_widget.dart';
import 'package:my_business/src/compenent/title_wdiget.dart';

import 'login_page.dart';
import 'sign_up.dart';

class WelcomePage extends StatefulWidget {
  

  

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends BaseStatefull<WelcomePage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.shade200,
                      offset: Offset(2, 4),
                      blurRadius: 5,
                      spreadRadius: 2)
                ],
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [myColor.yellowOrange, myColor.christine])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TitleWdiget(textColor: myColor.yellowOrange,),
                SizedBox(
                  height: 80,
                ),
                CustomerMyButtonWidget(title: applicationStrings.loginButton, 
                colorFirst: myColor.buttonColor1,
                 colorSecond: myColor.buttonColor2, 
                 callBack: () {
                      Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage(),),);
                 }, 
                 textColor: myColor.whiteColor),
                  SizedBox(
                  height: 20,
                ),
                 //
                  CustomerMyButtonWidget(title: applicationStrings.registerButton, 
               colorFirst: myColor.buttonColor1,
                 colorSecond: myColor.buttonColor2, 
                 callBack: () {
                    Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpPage(),),);
                 }, 
                 textColor: myColor.whiteColor),
             
                SizedBox(
                  height: 20,
                ),

              ],
            ),
          ),
    );
  }
}