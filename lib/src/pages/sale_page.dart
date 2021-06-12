import 'package:flutter/material.dart';
import 'package:my_business/core/base/base_statefull.dart';

class SalePage extends StatefulWidget {
  @override
  _SalePageState createState() => _SalePageState();
}

class _SalePageState extends BaseStatefull<SalePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: myColor.christine,
      ),
      body: SafeArea(child: Text('data')),
      
    );
  }
}