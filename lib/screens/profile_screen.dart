
import 'package:aya_mobile/components/MLCountryPIckerComponent.dart';
import 'package:aya_mobile/components/ProfileDetailComponent.dart';
import 'package:aya_mobile/utils/MLString.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:aya_mobile/utils/MLColors.dart';
import 'package:aya_mobile/utils/MLCommon.dart';
import 'package:aya_mobile/utils/MLImage.dart';

class ProfileDetailScreen extends StatefulWidget {
  static String tag = '/MLDoctorDetailScreen';

  @override
  ProfileDetailScreenState createState() => ProfileDetailScreenState();
}

class ProfileDetailScreenState extends State<ProfileDetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    _tabController = TabController(length: 3, vsync: this);
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
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
              expandedHeight: context.height() * 0.45,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: mlPrimaryColor,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Image.asset(ml_ic_doctor_image!,
                              fit: BoxFit.contain, width: context.width())
                          .paddingTop(16.0),
                      mlBackToPreviousWidget(context, white)
                          .paddingOnly(left: 24, top: 24),
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
                      child: ProfileDetailComponent(),
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
