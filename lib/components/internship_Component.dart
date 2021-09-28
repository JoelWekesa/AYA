import 'package:aya_mobile/components/ProfileDetailComponent.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:aya_mobile/model/MLPatientData.dart';
import 'package:aya_mobile/screens/apply_internship_screen.dart';
import 'package:aya_mobile/utils/MLColors.dart';
import 'package:aya_mobile/utils/MLDataProvider.dart';
import 'package:aya_mobile/utils/MLImage.dart';

class IntershipComponent extends StatefulWidget {
  static String tag = '/InternshipComponent';

  @override
  IntershipComponentState createState() => IntershipComponentState();
}

class IntershipComponentState extends State<IntershipComponent> {
  List<MLPatientData> patientData = mlPatientDataList();
  int? selectedIndex = 0;

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('List of Interns', style: boldTextStyle(size: 24)),
          8.height,
          Text('Find the service you are', style: secondaryTextStyle()),
          16.height,
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: patientData.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: boxDecorationWithRoundedCorners(
                  borderRadius: radius(12),
                  border: Border.all(
                      color:
                          selectedIndex == index ? mlColorBlue : midnightBlue),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          child: Image.asset(ml_ic_profile_picture!)
                              .paddingAll(4.0),
                          radius: 32.0,
                          backgroundColor: mlColorCyan,
                        ),
                        8.width,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text((patientData[index].name).validate(),
                                style: boldTextStyle(size: 18)),
                            5.height,
                            Row(
                              children: [
                                Text((patientData[index].dob).validate(),
                                    style: secondaryTextStyle()),
                                8.width,
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    5.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(2.0),
                          child: Text(('Nurse'),
                                  style: secondaryTextStyle(color: black))
                              .paddingOnly(right: 16.0, left: 16.0),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'View Profile ',
                                  style:
                                      primaryTextStyle(color: mlColorDarkBlue)),
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
                ).paddingAll(16.0),
              ).paddingBottom(16.0).onTap(() {
                setState(() {
                  selectedIndex = index;
                  print('$index');
                });
              });
            },
          ),
          Container(
            alignment: Alignment.center,
            decoration: boxDecorationWithRoundedCorners(
              borderRadius: radius(12),
              border: Border.all(color: Colors.blue),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Apply For Internship',
                    style: primaryTextStyle(color: mlColorDarkBlue)),
                8.width,
                Icon(Icons.add_circle_outline,
                    color: mlColorDarkBlue, size: 16),
              ],
            ).paddingAll(16.0).onTap(() {
              ApplyInternshipScreen().launch(context);
            }),
          ),
        ],
      ).paddingAll(16.0),
    );
  }
}
