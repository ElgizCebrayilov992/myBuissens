import 'package:flutter/material.dart';
import 'package:my_business/core/base/base_stateless.dart';
import 'package:my_business/core/color/my_color.dart';

import 'chart.dart';
import 'info_card.dart';

// ignore: must_be_immutable
class StarageDetails extends BaseStateless {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: MyColor.instance.christine,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children(),
      ),
    );
  }

  List<Widget> children() {
    return [
        Text(
         applicationStrings.totalPrice,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 16),
        Chart(),
        StorageInfoCard(
          svgSrc: "one_day",
          title: applicationStrings.totalPriceDaySale,
          amountOfFiles: "7953434354535 AZN",
          numOfFiles: 4548,
          color: myColor.oneDayColor,
        ),
         StorageInfoCard(
          svgSrc: "month_day",
          title: applicationStrings.totalPriceMonthSale,
          amountOfFiles: "1.3GB",
          numOfFiles: 1328,
          color: myColor.monthDayColor,
        ),
         StorageInfoCard(
          svgSrc: "all_day",
          title: applicationStrings.totalPrice,
          amountOfFiles: "1.3GB",
          numOfFiles: 1328,
          color: myColor.allDayColor,
        ),
      
      ];
  }
}
