import 'package:flutter/material.dart';
import 'package:my_business/core/color/my_color.dart';

import '../application_strings.dart';

abstract class BaseStatefull<T extends StatefulWidget> extends State<T> {

  ApplicationStrings applicationStrings=ApplicationStrings.instance;
  MyColor myColor=MyColor.instance;
 
}