import 'package:flutter/material.dart';
import 'package:my_business/core/base/base_stateless.dart';
import 'package:my_business/core/color/my_color.dart';
import 'package:my_business/src/compenent/title_wdiget.dart';

import 'menu_list_tile.dart';

// ignore: must_be_immutable
class SlideMenu extends BaseStateless {
  

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
              title: applicationStrings.home,
              svgPath: "home",
              callBack: () {},
            ), //cashier_machine
            MenuListTile(
              title: applicationStrings.sale,
              svgPath: "cashier_machine",
              callBack: () {},
            ),
            MenuListTile(
              title: applicationStrings.customer,
              svgPath: "customer",
              callBack: () {},
            ),
            MenuListTile(
              title: applicationStrings.company,
              svgPath: "company",
              callBack: () {},
            ),
            MenuListTile(
              title: applicationStrings.depo,
              svgPath: "depo",
              callBack: () {},
            ),
            MenuListTile(
              title: applicationStrings.measure,
              svgPath: "measure",
              callBack: () {},
            ),
            MenuListTile(
              title: applicationStrings.convert,
              svgPath: "convert",
              callBack: () {},
            ),
            MenuListTile(
              title: applicationStrings.documentType,
              svgPath: "contract",
              callBack: () {},
            ),
            MenuListTile(
              title: applicationStrings.product,
              svgPath: "product",
              callBack: () {},
            ),
            MenuListTile(
              title: applicationStrings.settings,
              svgPath: "settings",
              callBack: () {},
            ),
            MenuListTile(
              title: applicationStrings.about,
              svgPath: "information",
              callBack: () {},
            ),
          ],
        ),
      ),
    );
  }
}
