import 'package:flutter/material.dart';
import 'package:my_business/core/base/base_statefull.dart';
import 'package:my_business/src/compenent/submit_button_widget.dart';
import 'package:my_business/src/sign_up.dart';

import 'compenent/title_wdiget.dart';
import 'login_page.dart';

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
                    colors: [myColor.gradientColorFirst, myColor.gradientColorSecond])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TitleWdiget(textColor: myColor.welcomeSignUpTextColor,),
                SizedBox(
                  height: 80,
                ),
                CustomerMyButtonWidget(title: applicationStrings.loginButton, 
                colorFirst: myColor.welcomeSignUpTextColor,
                 colorSecond: myColor.welcomeSignUpTextColor, 
                 callBack: () {
                      Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage(),),);
                 }, 
                 textColor: myColor.welcomeLoginTextColor),
                  SizedBox(
                  height: 20,
                ),
                 //
                  CustomerMyButtonWidget(title: applicationStrings.registerButton, 
                colorFirst: myColor.gradientColorFirst,
                 colorSecond: myColor.welcomeLoginTextColor, 
                 callBack: () {
                    Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpPage(),),);
                 }, 
                 textColor: myColor.welcomeSignUpTextColor),
             
                SizedBox(
                  height: 20,
                ),

              ],
            ),
          ),
    );
  }
}