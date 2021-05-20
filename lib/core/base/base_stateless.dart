

import 'package:flutter/material.dart';
import 'package:my_business/core/color/my_color.dart';
import 'package:my_business/core/myStrings/application_strings.dart';


// ignore: must_be_immutable
abstract class BaseStateless<T extends StatelessWidget> extends StatelessWidget{
ApplicationStrings applicationStrings=ApplicationStrings.instance;
  MyColor myColor=MyColor.instance;
}
