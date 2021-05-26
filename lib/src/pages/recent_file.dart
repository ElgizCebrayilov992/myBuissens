import 'package:flutter/material.dart';
import '../../core/base/base_stateless.dart';

// ignore: must_be_immutable
class RecentFiles extends BaseStateless {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
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
                colors: [myColor.yellowOrange, myColor.christine]),
                ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            applicationStrings.recentFileTitle,
            style: Theme.of(context).textTheme.headline5
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: 16,
              columns: [
                DataColumn(
                  label: buildTextDataColumnHead(context: context, title: applicationStrings.recentTableNo),
                ),
                DataColumn(
                  label: buildTextDataColumnHead(context: context, title: applicationStrings.recentTableProductName),
                ),
                DataColumn(
                  label: buildTextDataColumnHead(context: context, title: applicationStrings.recentTablePrice),
                ),
                 DataColumn(
                  label: buildTextDataColumnHead(context: context, title: applicationStrings.recentTableWhom),
                ),
                 DataColumn(
                  label: buildTextDataColumnHead(context: context, title: applicationStrings.recentTableTime),
                ),
              ],
              rows: List.generate(
                5,
                (index) => recentFileDataRow(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Text buildTextDataColumnHead({required String title,required BuildContext context}) => Text(title,style: Theme.of(context).textTheme.bodyText1!.copyWith(color: myColor.whiteColor),);
}

DataRow recentFileDataRow() {
  return DataRow(
    cells: [
      DataCell(
        Text('1')
      ),
      DataCell(Text('ds')),
      DataCell(Text('sd')),
      DataCell(Text('sdsd')),
      DataCell(Text('sdsd')),
    ],
  );
}
