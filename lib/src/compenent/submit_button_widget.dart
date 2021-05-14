import 'package:flutter/material.dart';

class CustomerMyButtonWidget extends StatelessWidget {
  final String title;
  final Color colorFirst;
  final Color colorSecond;
  final Color textColor;
  final GestureTapCallback callBack;

  const CustomerMyButtonWidget({ required this.title, required this.colorFirst, required this.colorSecond, required this.callBack, required this.textColor}) ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callBack,
          child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.shade600,
                  offset: Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 2)
            ],
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [colorFirst, colorSecond])),
        child: Text(
          title,
          style: TextStyle(fontSize: 20, color: textColor),
        ),
      ),
    );
  }
}