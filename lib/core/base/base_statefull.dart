import 'package:flutter/material.dart';

import '../color/my_color.dart';
import '../myStrings/application_strings.dart';

abstract class BaseStatefull<T extends StatefulWidget> extends State<T> {

  ApplicationStrings applicationStrings=ApplicationStrings.instance;
  MyColor myColor=MyColor.instance;
  
 
}