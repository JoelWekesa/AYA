import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:aya_mobile/components/facility_detail_component.dart';
import 'package:aya_mobile/utils/MLColors.dart';
import 'package:aya_mobile/utils/MLCommon.dart';
import 'package:aya_mobile/utils/MLImage.dart';

class FacilityDetailScreen extends StatefulWidget {
  static String tag = '/MLHospitalDetailScreen';

  @override
  FacilityDetailScreenState createState() => FacilityDetailScreenState();
}

class FacilityDetailScreenState extends State<FacilityDetailScreen> {
  double containerHeight = 0;
  bool? liked = false;

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
    return Scaffold(
      backgroundColor: mlPrimaryColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: mlPrimaryColor,
                  child: Stack(
                    children: [
                      Image.asset(ml_ic_hospital_img!,
                              fit: BoxFit.cover, width: context.width())
                          .cornerRadiusWithClipRRectOnly(topRight: 24),
                      Positioned(
                        top: 16.0,
                        right: 16.0,
                        child: mlIconWithRoundedContainer(Icons.close, black)
                            .onTap(() {
                          finish(context);
                        }),
                      ),
                      Positioned(
                        bottom: 16.0,
                        right: 16.0,
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: boxDecorationWithRoundedCorners(
                              backgroundColor: white,
                              border: Border.all(color: Colors.grey.shade100),
                              borderRadius: radius(24.0)),
                          child: liked == true
                              ? InkWell(
                                  onTap: () {
                                    setState(() {
                                      liked = false;
                                    });
                                  },
                                  child: Icon(Icons.download,
                                      color: Colors.blue, size: 16),
                                )
                              : InkWell(
                                  onTap: () {
                                    setState(() {
                                      liked = true;
                                    });
                                  },
                                  child: Icon(Icons.download,
                                      color: Colors.grey, size: 16),
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  if (index == 0) {
                    return Container(
                      decoration: boxDecorationWithRoundedCorners(
                        borderRadius: radiusOnly(topRight: 12, topLeft: 12),
                      ),
                      child: FacilityDetailComponent(),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
