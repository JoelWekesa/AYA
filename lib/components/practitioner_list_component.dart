import 'package:aya_mobile/components/ProfileDetailComponent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:aya_mobile/model/PractitionerData.dart';
import 'package:aya_mobile/utils/MLColors.dart';
import 'package:aya_mobile/utils/MLCommon.dart';
import 'package:aya_mobile/utils/MLDataProvider.dart';

import 'MLScheduleAppointmentComponent.dart';

class PractitionerListComponent extends StatefulWidget {
  static String tag = '/PractitionerListComponent';

  @override
  PractitionerListComponentState createState() =>
      PractitionerListComponentState();
}

class PractitionerListComponentState extends State<PractitionerListComponent> {
  List<PractitionerData> practitionerDataList = practitionerListDataList();
  List<String?> time = mlScheduleTimeList();
  int? selectedIndex = 0;
  String? selectedTime;

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
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Practicioner', style: boldTextStyle(size: 24)),
                      8.height,
                      Text('Find the service you are',
                          style: secondaryTextStyle()),
                      16.height,
                    ],
                  ).expand(),
                  mlRoundedIconContainer(Icons.search, mlColorBlue),
                  16.width,
                  mlRoundedIconContainer(
                      Icons.calendar_view_day_outlined, mlColorBlue),
                ],
              ),
              8.height,
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                padding: EdgeInsets.only(bottom: 75),
                physics: NeverScrollableScrollPhysics(),
                itemCount: practitionerDataList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    padding: EdgeInsets.all(12.0),
                    decoration: boxDecorationWithRoundedCorners(
                      borderRadius: radius(12),
                      border: Border.all(
                          color: selectedIndex == index
                              ? mlColorBlue
                              : midnightBlue),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 4.0),
                              height: 65,
                              width: 65,
                              decoration: boxDecorationWithRoundedCorners(
                                  backgroundColor: mlColorCyan,
                                  borderRadius: radius(12)),
                              child: Image.asset(
                                  (practitionerDataList[index].image)
                                      .validate(),
                                  fit: BoxFit.fill),
                            ),
                            8.width,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    (practitionerDataList[index].title)
                                        .validate(),
                                    style: boldTextStyle(size: 18)),
                                8.height,
                                Text("Kenya Hospital".validate(),
                                    style: boldTextStyle(size: 16)),
                                8.height,
                                Row(
                                  children: [
                                    Text(
                                        (practitionerDataList[index].subtitle)
                                            .validate(),
                                        style: secondaryTextStyle()),
                                    8.width,
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 16),
                                    Text('4.8', style: secondaryTextStyle()),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        16.height,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(2.0),
                              child: Text(('Dec 23 at 8:30 AM'),
                                      style: secondaryTextStyle(color: black))
                                  .paddingOnly(right: 16.0, left: 16.0),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'View Profile ',
                                      style: primaryTextStyle(
                                          color: mlColorDarkBlue)),
                                  WidgetSpan(
                                    child: Icon(Icons.arrow_forward,
                                            color: mlColorDarkBlue, size: 16)
                                        .paddingLeft(4),
                                  ),
                                ],
                              ),
                            ).onTap(() {
                              ProfileDetailComponent().launch(context);
                            })
                          ],
                        ),
                      ],
                    ),
                  ).onTap(() {
                    setState(() {
                      selectedIndex = index;
                    });
                    print('$index');
                  });
                },
              ),
            ],
          ).paddingAll(16.0),
        ),
        Container(
          color: white,
          child: Text(
            'Schedule appointment time',
            style: boldTextStyle(
                color: mlColorDarkBlue, decoration: TextDecoration.underline),
          ),
        ).paddingOnly(right: 16, bottom: 72).onTap(() {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (builder) {
                return MLScheduleApoointmentSheet();
              });
        }),
      ],
    );
  }
}
