import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

class DashboardInfoTitle extends StatelessWidget {
  final String? subTitle;
  final String? info;

  const DashboardInfoTitle({Key? key,  this.subTitle,  this.info}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subTitle!,
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white70),
              ),
              AutoSizeText(
                
                info!,
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white,fontSize: 10),
                   minFontSize: 10,
  stepGranularity: 10,
  maxLines: 4,
  overflow: TextOverflow.ellipsis


              ),
            ],
          ),
    );
  }
}