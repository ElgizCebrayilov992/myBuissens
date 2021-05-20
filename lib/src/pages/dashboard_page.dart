import 'package:flutter/material.dart';
import 'package:my_business/core/base/base_stateless.dart';
import 'package:my_business/core/controllers/menu_controller.dart';
import 'package:my_business/core/responsive/responsive.dart';
import 'package:my_business/src/pages/recent_file.dart';
import 'package:my_business/src/pages/storge_detail.dart';
import 'package:provider/provider.dart';

import 'my_files.dart';

// ignore: must_be_immutable
class DashboardScreen extends BaseStateless {
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          
          children: [
             if (!Responsive.isDesktop(context))
          buildRowMenu(context),
            SizedBox(height: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiels(),
                      SizedBox(height: 16),
                      RecentFiles(),
                      if (Responsive.isMobile(context)) SizedBox(height: 16),
                      if (Responsive.isMobile(context)) StarageDetails(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context)) SizedBox(width: 16.0),
                // On Mobile means if the screen is less than 850 we dont want to show it
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StarageDetails(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Row buildRowMenu(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: context.read<MenuController>().controlMenu,
            ),
            Text(applicationStrings.dashBoardMenu),
          ],
        );
  }
}
