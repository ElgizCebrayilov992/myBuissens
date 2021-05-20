import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_business/core/color/my_color.dart';

class RecentFiles extends StatelessWidget {
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
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: 16,
              columns: [
                DataColumn(
                  label: Text("File Name"),
                ),
                DataColumn(
                  label: Text("Date"),
                ),
                DataColumn(
                  label: Text("Size"),
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
}

DataRow recentFileDataRow() {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              'assets/images/svg/month_day.svg',
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text('fileInfo.title'),
            ),
          ],
        ),
      ),
      DataCell(Text('fileInfo.date')),
      DataCell(Text('fileInfo.size')),
    ],
  );
}
