import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_business/core/base/base_stateless.dart';


// ignore: must_be_immutable
class StorageInfoCard extends StatelessWidget {
   StorageInfoCard({
    Key? key,
    required this.amountOfFiles,
    required this.numOfFiles,
    required this.title,
    required this.svgSrc,
    required this.color
  }) : super(key: key);

  final String title, svgSrc, amountOfFiles;
  final int numOfFiles;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
            width: 2, color: Colors.white38),
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(
              "assets/images/svg/$svgSrc.svg",
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                     title,
                     style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white70),
                   
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    
                  ),
                  Text(
                    "$numOfFiles Məhsul",
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          Text(amountOfFiles, style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white70),)
        ],
      ),
    );
  }
}
