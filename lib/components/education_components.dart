import 'package:aya_mobile/components/education_list_components.dart';
import 'package:flutter/material.dart';

import 'package:aya_mobile/utils/MLColors.dart';
import 'package:nb_utils/nb_utils.dart';

class EducationComponent extends StatefulWidget {
  static String tag = '/EducationComponent';

  @override
  EducationComponentState createState() => EducationComponentState();
}

class EducationComponentState extends State<EducationComponent> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    Widget mOption(String heading, String subHeading, var color) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(heading, style: secondaryTextStyle(color: black)),
          6.height,
          Row(
            children: [
              Icon(Icons.adjust_rounded, size: 16, color: color),
              Text(subHeading,
                  style: primaryTextStyle(size: 14, color: mlColorBlue)),
            ],
          ),
        ],
      );
    }

    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          8.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
          ),
          32.height,
          EducationListComponent(),
          16.height,
        ],
      ).paddingAll(16.0),
    );
  }
}
