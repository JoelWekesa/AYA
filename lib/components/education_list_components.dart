import 'package:aya_mobile/model/education_list.dart';
import 'package:aya_mobile/utils/MLColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:aya_mobile/utils/MLDataProvider.dart';

class EducationListComponent extends StatefulWidget {
  static String tag = '/MLNewsAnVideoComponent';

  @override
  EducationListComponentState createState() => EducationListComponentState();
}

class EducationListComponentState extends State<EducationListComponent> {
  List<EducationList> data = educationDataList1();

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
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          16.height,
          Text(("Education History").validate(), style: boldTextStyle()),
          16.height,
          Column(
            children: data.map((e) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  16.width,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text((e.cadreText).validate(),
                          style: boldTextStyle(size: 14, color: blackColor)),
                      8.height,
                      Text((e.institution).validate(),
                          style: boldTextStyle(size: 13, color: Colors.green)),
                      8.height,
                      Text((e.admissionDate).validate(),
                          style: boldTextStyle(size: 12, color: mlColorRed)),
                    ],
                  ).expand()
                ],
              ).paddingBottom(16.0);
            }).toList(),
          ),
        ],
      ).paddingAll(16.0),
    );
  }
}
