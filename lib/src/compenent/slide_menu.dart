import 'package:flutter/material.dart';
import 'package:my_business/core/color/my_color.dart';
import 'package:my_business/src/compenent/title_wdiget.dart';

import 'menu_list_tile.dart';

class SlideMenu extends StatelessWidget {
  const SlideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: TitleWdiget(
                textColor: MyColor.instance.yellowOrange,
              ),
            ),
            Divider(),
            MenuListTile(
              title: 'Home',
              svgPath: "home",
              callBack: () {},
            ), //cashier_machine
            MenuListTile(
              title: 'Satış',
              svgPath: "cashier_machine",
              callBack: () {},
            ),
            MenuListTile(
              title: 'Müştəri',
              svgPath: "customer",
              callBack: () {},
            ),
            MenuListTile(
              title: 'Şirkət',
              svgPath: "company",
              callBack: () {},
            ),
            MenuListTile(
              title: 'Depo',
              svgPath: "depo",
              callBack: () {},
            ),
            MenuListTile(
              title: 'Ölçü vahidi',
              svgPath: "measure",
              callBack: () {},
            ),
            MenuListTile(
              title: 'alış-satış vahidi',
              svgPath: "convert",
              callBack: () {},
            ),
            MenuListTile(
              title: 'Sənəd tipi',
              svgPath: "contract",
              callBack: () {},
            ),
            MenuListTile(
              title: 'Məhsul',
              svgPath: "product",
              callBack: () {},
            ),
            MenuListTile(
              title: 'Parametrlər',
              svgPath: "settings",
              callBack: () {},
            ),
            MenuListTile(
              title: 'Haqqımızda',
              svgPath: "information",
              callBack: () {},
            ),
          ],
        ),
      ),
    );
  }
}
