import 'package:flutter/material.dart';
import 'package:my_business/core/base/base_stateless.dart';
import 'package:my_business/core/responsive/responsive.dart';

import 'file_info_card.dart';

// ignore: must_be_immutable
class MyFiels extends BaseStateless {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              applicationStrings.myFiles,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
        SizedBox(height: 16),
        Responsive(
          mobile: FileInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width <= 320 ? 0.9 : 1,
          ),
          tablet: FileInfoCardGridView(  ),
          desktop: FileInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class FileInfoCardGridView extends BaseStateless {
   FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;
//mehsul,sirket,
  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: childAspectRatio,
      ),
      children: [ 
        //mehsullar
          FileInfoCard(svgPath: 'product',
        title: applicationStrings.product,
        totalCustomer: applicationStrings.totalCustomerProduct,
        totalCustomerInfo: '65',
        debitCustomer: "Ümümi məhsul sayı",
        debitCustomerInfo: '43333434345',),

        //sirketler
        FileInfoCard(svgPath: 'company',
        title: applicationStrings.company,
        totalCustomer: applicationStrings.totalCustomerCompany,
        totalCustomerInfo: '65',
        debitCustomer: "Ümümi məhsul sayı",
        debitCustomerInfo: '43333434345',),
         //Musteri
         FileInfoCard(svgPath: 'customer',
        title: applicationStrings.customer,
        totalCustomer: applicationStrings.totalCustomerCustomer,
        totalCustomerInfo: '65',
        debitCustomer: "Borclu müştəri sayı",
        debitCustomerInfo: '45',),
          //

        ],
    );
  }
}
