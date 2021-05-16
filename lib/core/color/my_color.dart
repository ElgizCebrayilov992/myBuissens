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
 
 final Color whiteColor=Colors.white;
 final Color yellowOrange=Color(0xfffbb448);
 final Color christine=Color(0xffe46b10);
 final Color buttonColor1=Color(0xffDABA2B);
 final Color buttonColor2=Color(0xffC29942);
 
 

 //login page color
final Color loginPageRegisterTextColor=Color(0xfff79c4f);
  }