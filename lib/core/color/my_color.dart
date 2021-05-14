import 'package:flutter/material.dart';

class MyColor {
  static MyColor? _instace;
  static MyColor get instance{
    if(_instace!=null)return _instace!;
    _instace=MyColor._init();
    return _instace!;
  }
  MyColor._init();

  //welcome color
 final Color welcomeBoxShodowColor=Color(0xffdf8e33);
 final Color welcomeLoginTextColor=Color(0xfff7892b);
 final Color welcomeSignUpTextColor=Colors.white;
 final Color gradientColorFirst=Color(0xfffbb448);
 final Color gradientColorSecond=Color(0xffe46b10);
 
 

 //login page color
final Color loginPageRegisterTextColor=Color(0xfff79c4f);
  }