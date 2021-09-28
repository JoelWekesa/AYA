import 'package:aya_mobile/screens/facility_detail_screen.dart';
import 'package:aya_mobile/utils/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:aya_mobile/model/MLDepartmentData.dart';
import 'package:aya_mobile/model/MLTopHospitalData.dart';
import 'package:aya_mobile/utils/MLColors.dart';
import 'package:aya_mobile/utils/MLDataProvider.dart';
import 'package:aya_mobile/utils/MLString.dart';

class HomeBottomComponent extends StatefulWidget {
  static String tag = '/HomeBottomComponent';

  @override
  HomeBottomComponentState createState() => HomeBottomComponentState();
}

class HomeBottomComponentState extends State<HomeBottomComponent> {
  List<MLDepartmentData> departmentList = mlDepartmentDataList();
  double progressValue = 2.5;
  int? selectedIndex = 0;
  bool? liked = false;
  List<MLTopHospitalData> tophospitalList = mlTopHospitalDataList();
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //_tabController =
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        8.height,
        Row(
          children: [
            Text(mlModules!, style: boldTextStyle(size: 18)).expand(),
            Text(mlView_all!, style: secondaryTextStyle(color: mlColorBlue)),
            4.width,
            Icon(Icons.keyboard_arrow_right, color: mlColorBlue, size: 16),
          ],
        ).paddingOnly(left: 16, right: 16),
        10.height,
        HorizontalList(
          padding: EdgeInsets.only(right: 16.0, left: 8.0),
          wrapAlignment: WrapAlignment.spaceEvenly,
          itemCount: departmentList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.only(top: 8, bottom: 8, left: 8),
              padding: EdgeInsets.all(10),
              //decoration: boxDecorationRoundedWithShadow(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset((departmentList[index].image).validate(),
                          height: 40, width: 40, fit: BoxFit.fill)
                      .paddingAll(8.0),
                  Text((departmentList[index].title).validate(),
                      style: secondaryTextStyle()),
                  4.height,
                  Text((departmentList[index].subtitle).validate(),
                      style: primaryTextStyle()),
                  8.height,
                ],
              ),
            );
          },
        ),
        Row(
          children: [
            Text(topArticles!, style: boldTextStyle(size: 18)).expand(),
            Text(mlView_all!, style: secondaryTextStyle(color: mlColorBlue)),
            4.width,
            Icon(Icons.keyboard_arrow_right, color: mlColorBlue, size: 16),
          ],
        ).paddingAll(16.0),
        16.height,
        ListView.builder(
          padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 70),
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: tophospitalList.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(12.0),
              decoration: boxDecorationWithRoundedCorners(
                border: Border.all(
                    color: selectedIndex == index ? mlColorBlue : midnightBlue),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(
                          (tophospitalList[index].image).validate(),
                          width: 100,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ).cornerRadiusWithClipRRect(8.0),
                        Container(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text((tophospitalList[index].title).validate(),
                                  style: MyText.medium(context).copyWith(
                                      color: Colors.grey[800],
                                      fontWeight: FontWeight.w500)),
                              Container(height: 5),
                              Text("06 March 2019",
                                  style: MyText.body1(context)!
                                      .copyWith(color: Colors.grey[500])),
                              Text((tophospitalList[index].subtitle).validate(),
                                  maxLines: 2,
                                  style: MyText.subhead(context)!
                                      .copyWith(color: Colors.grey[700])),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ).paddingBottom(16.0).onTap(() {
              setState(() {
                selectedIndex = index;
              });
            });
          },
        ),
      ],
    );
  }
}
