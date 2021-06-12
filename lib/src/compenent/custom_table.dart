import 'package:flutter/material.dart';
import 'package:my_business/core/responsive/responsive.dart';

class CustomerTable extends StatelessWidget {
  final List<DataColumn> columns;
  final List<DataRow> rows;
  final double width;
  final double tablet;
  final double destkop;

  const CustomerTable(
      {Key? key,
      required this.columns,
      required this.rows,
      required this.width,
      required this.tablet,
      required this.destkop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        onSelectAll: (value) {
          print("value");
          print(value);
        },
        columns: columns,
        rows: rows,
        columnSpacing: Responsive.isMobile(context)
            ? (MediaQuery.of(context).size.width / width - 90)
            : Responsive.isTablet(context)
                ? tablet
                : destkop,
      ),
    );
  }
}
