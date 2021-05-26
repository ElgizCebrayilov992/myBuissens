

import 'package:flutter/material.dart';

import '../color/my_color.dart';
import '../myStrings/application_strings.dart';


// ignore: must_be_immutable
abstract class BaseStateless<T extends StatelessWidget> extends StatelessWidget {
  
  ApplicationStrings applicationStrings=ApplicationStrings.instance;
  MyColor myColor=MyColor.instance;
   BaseStateless({
    Key? key,
    
  }) : super(key: key);
}
