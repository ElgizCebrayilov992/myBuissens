import 'package:flutter/material.dart';
import 'package:my_business/src/pages/company_page.dart';
import 'package:my_business/src/pages/convert_page.dart';
import 'package:my_business/src/pages/customer_page.dart';
import 'package:my_business/src/pages/depo_page.dart';
import 'package:my_business/src/pages/measure_page.dart';
import '../../core/base/base_stateless.dart';
import '../../core/color/my_color.dart';
import 'title_wdiget.dart';
import '../pages/sale_page.dart';

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
            /*
            MenuListTile(
              title: applicationStrings.home,
              svgPath: "home",
              callBack: () {
                _selectMenu(menu: MainScreen(), context: context);
              },
            ), 
            */
            //cashier_machine
            MenuListTile(
              title: applicationStrings.sale,
              svgPath: "cashier_machine",
              callBack: () {
                _selectMenu(menu: SalePage(), context: context);
              },
            ),
            MenuListTile(
              title: applicationStrings.customer,
              svgPath: "customer",
              callBack: () {
                 _selectMenu(menu: CustomerPage(), context: context);
              },
            ),
            MenuListTile(
              title: applicationStrings.company,
              svgPath: "company",
              callBack: () {
                 _selectMenu(menu: CompanyPage(), context: context);
              },
            ),
            MenuListTile(
              title: applicationStrings.depo,
              svgPath: "depo",
              callBack: () {
                 _selectMenu(menu: DepoPage(), context: context);
              },
            ),
            MenuListTile(
              title: applicationStrings.measure,
              svgPath: "measure",
              callBack: () {
                   _selectMenu(menu: MeasurePage(), context: context);
              },
            ),
            MenuListTile(
              title: applicationStrings.convert,
              svgPath: "convert",
              callBack: () {
                    _selectMenu(menu: ConvertPage(), context: context);
              },
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

  void _selectMenu({required Widget menu, required BuildContext context}) {
    // Navigator.pop(context);
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => menu,
        ));
  }
}
