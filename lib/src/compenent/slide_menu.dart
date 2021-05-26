import 'package:flutter/material.dart';
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
  void _selectMenu({required Widget menu,required BuildContext context}){
   // Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context) => menu,));

  }
}
