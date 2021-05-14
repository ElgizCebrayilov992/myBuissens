import 'package:flutter/material.dart';

class AccountLabel extends StatelessWidget {
  final Widget page;
  final String textLabel;
  final String textButtonLabel;
  final Color  textButtonLabelColor;

  const AccountLabel({Key? key, required this.page, required this.textLabel, required this.textButtonLabel, required this.textButtonLabelColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => page));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              textLabel,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              textButtonLabel,
              style: TextStyle(
                  color: textButtonLabelColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}