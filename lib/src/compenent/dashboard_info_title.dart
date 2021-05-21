import 'package:flutter/material.dart';

class DashboardInfoTitle extends StatelessWidget {
  final String? subTitle;
  final String? info;

  const DashboardInfoTitle({Key? key, this.subTitle, this.info})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            subTitle!,
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(color: Colors.white70),
          ),
          Text(
            info!,
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
