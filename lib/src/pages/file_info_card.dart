import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:my_business/core/base/base_stateless.dart';
import 'package:my_business/core/color/my_color.dart';
import 'package:my_business/src/compenent/dashboard_info_title.dart';

class FileInfoCard extends BaseStateless {
  final String svgPath;
  final String title;
  final String totalCustomer;
  final String totalCustomerInfo;
   final String debitCustomer;
  final String debitCustomerInfo;

  FileInfoCard( {
    required this.svgPath,
    required this.title,
    required this.totalCustomer,
    required this.totalCustomerInfo,
    required this.debitCustomer,
    required this.debitCustomerInfo

  });
  @override
  Widget build(BuildContext context) {
    return Container(
     
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
                colors: [myColor.christine, myColor.yellowOrange]),
                ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildColumnTextInfoSvg(),
            DashboardInfoTitle(info: totalCustomerInfo,subTitle: totalCustomer,),
            DashboardInfoTitle(info: debitCustomerInfo,subTitle: debitCustomer,),
        ],
      ),
    );
  }

  Column buildColumnTextInfoSvg() {
    return Column(
          children: [
            buildRowSvg(),
            buildTextTitle(),
          ],
        );
  }



  Text buildTextTitle() {
    return Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        );
  }

  Widget buildRowSvg() {
    return Container(
              padding: EdgeInsets.all(16 * 0.75),
              height: 40,
              width: 40,
              decoration: buildBoxDecoration(),
              child: SvgPicture.asset(
                'assets/images/svg/$svgPath.svg',
                color: MyColor.instance.whiteColor,
              ),
            );
  }



  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
               boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.white30,
              offset: Offset(2, 4),
              blurRadius: 5,
              spreadRadius: 2)
        ],
               gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [myColor.buttonColor1, myColor.buttonColor2]),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            );
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    required this.color,
    required this.percentage,
  });

  final Color color;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) => Container(
            width: constraints.maxWidth * (percentage / 100),
            height: 5,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ],
    );
  }
}
