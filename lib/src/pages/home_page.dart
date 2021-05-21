import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_business/constants.dart';
import 'package:my_business/core/base/base_statefull.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends BaseStatefull<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  height: 500,
                  color: Colors.amber,
                ),
              ),
              SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                flex: 2,
                child: buildContainer(),
              ),
            ],
          )
        ],
      ),
    ));
  }

  Container buildContainer() {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Ümumi satış'),
          Stack(
            children: [
              buildSizedBoxChart(),
              buildPositionedFaiz(),
            ],
          ),
          SizedBox(
            height: 2,
          ),
          buildContainerChartAltInfo(
              aciqlama: '45',
              basliq: 'Bir günlük satış sayı',
              qiymet: '256',
              svgPath: 'one_day'),
          buildContainerChartAltInfo(
              aciqlama: '1254',
              basliq: 'Aylıq satış sayı',
              qiymet: '2560',
              svgPath: 'month_day'),
        ],
      ),
    );
  }

  Widget buildContainerChartAltInfo({
    required String svgPath,
    required String basliq,
    required String aciqlama,
    required String qiymet,
  }) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: myColor.yellowOrange),
          borderRadius: const BorderRadius.all(
            Radius.circular(defaultPadding),
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              height: 20,
              width: 20,
              child: SvgPicture.asset(
                "assets/images/svg/$svgPath.svg",
                color: myColor.yellowOrange,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      basliq,
                      minFontSize: 10,
                      stepGranularity: 10,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      aciqlama,
                    )
                  ],
                ),
              ),
            ),
            Text('$qiymet AZN')
          ],
        ),
      ),
    );
  }

  Positioned buildPositionedFaiz() {
    return Positioned.fill(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('25%'),
        ],
      ),
    );
  }

  SizedBox buildSizedBoxChart() {
    return SizedBox(
      height: 200,
      child: PieChart(
        PieChartData(
          sections: [
            PieChartSectionData(
              showTitle: false,
              value: 15,
            ),
            PieChartSectionData(
                radius: 30,
                value: 15,
                showTitle: false,
                color: Colors.amberAccent),
          ],
        ),
      ),
    );
  }
}
