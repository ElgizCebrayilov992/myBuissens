import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleWdiget extends StatelessWidget {
  final Color textColor;

  const TitleWdiget({Key? key, required this.textColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'My ',
          style: GoogleFonts.lobster(
            textStyle: Theme.of(context).textTheme.bodyText1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color(0xffe46b10),
          ),
          children: [
            TextSpan(
              text: 'business',
              style: TextStyle(color:textColor, fontSize: 30),
            ),
           
          ]),
    );
  }
}