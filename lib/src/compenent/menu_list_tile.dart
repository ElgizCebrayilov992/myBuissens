import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/color/my_color.dart';

class MenuListTile extends StatelessWidget {
  final String title;
  final String svgPath;
  final GestureTapCallback callBack;

  const MenuListTile(
      {Key? key,
      required this.title,
      required this.svgPath,
      required this.callBack})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0.0,
      onTap: callBack,
      leading: SvgPicture.asset(
        "assets/images/svg/$svgPath.svg",
        height: 20,
        color: MyColor.instance.christine,
      ),
      title: Text(
        title,
        style: TextStyle(color: MyColor.instance.christine),
      ),
    );
  }
}
