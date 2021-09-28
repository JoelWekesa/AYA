import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:aya_mobile/model/knowledge_base.dart';
import 'package:aya_mobile/utils/MLColors.dart';
import 'package:aya_mobile/utils/MLDataProvider.dart';

class KnowledgeBaseComponent extends StatefulWidget {
  static String tag = '/MLPharmacyProductComponent';

  const KnowledgeBaseComponent({Key? key}) : super(key: key);

  @override
  _KnowledgeBaseComponentState createState() => _KnowledgeBaseComponentState();
}

class _KnowledgeBaseComponentState extends State<KnowledgeBaseComponent> {
  List<KnowledgeBaseData> listTwo = mKnowledgebaseDataList();
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
    return new Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('List of Learning Materials', style: boldTextStyle(size: 20))
                  .expand(),
              Icon(Icons.format_line_spacing, color: black, size: 24),
            ],
          ),
          16.height,
          StaggeredGridView.countBuilder(
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            itemCount: listTwo.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: boxDecorationWithRoundedCorners(
                  borderRadius: radius(12),
                  border: Border.all(color: mlColorLightGrey),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset((listTwo[index].image).validate(),
                                height: 120,
                                width: context.width(),
                                fit: BoxFit.cover)
                            .cornerRadiusWithClipRRectOnly(
                                topRight: 8, topLeft: 8),
                        Container(
                          decoration: boxDecorationWithRoundedCorners(
                              backgroundColor: mlColorDarkBlue),
                          child: Text((listTwo[index].time).validate(),
                                  style: secondaryTextStyle(color: white))
                              .paddingOnly(right: 8, left: 8.0),
                        ).paddingOnly(left: 4.0, bottom: 8)
                      ],
                    ),
                    8.height,
                    Text((listTwo[index].title).validate(),
                            style: boldTextStyle())
                        .paddingOnly(left: 10, right: 10),
                    2.height,
                    Text(((listTwo[index].author).validate()).validate(),
                            style: secondaryTextStyle())
                        .paddingOnly(left: 10, right: 10),
                    4.height,
                    Row(
                      children: <Widget>[
                        4.width,
                        Container(
                          alignment: Alignment.centerRight,
                          child: LinearProgressIndicator(
                            minHeight: 5.0,
                            backgroundColor: Colors.grey.withOpacity(0.5),
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.green),
                            value: 0.6,
                          ),
                        ).expand(flex: 5),
                        4.width,
                      ],
                    ).paddingOnly(left: 10, right: 10),
                    4.height,
                    Text("Completed".validate(), style: boldTextStyle())
                        .paddingOnly(left: 10, right: 10),
                    // Text("% Completed".validate(), style: secondaryTextStyle())
                    //     .paddingOnly(left: 10, right: 10),
                    // 4.height,
                    //  12.height,
                    5.height,
                    Row(
                      children: <Widget>[
                        RatingBarWidget(
                                onRatingChanged: (v) {}, rating: 3.5, size: 14)
                            .expand(),
                        4.width,
                        Text(('4.8 (456)'), style: secondaryTextStyle()),
                      ],
                    ).paddingOnly(left: 10, right: 10),
                    12.height,
                  ],
                ),
              ).onTap(() {
                //  MLProductDetailScreen().launch(context);
              });
            },
            staggeredTileBuilder: (index) => StaggeredTile.fit(1),
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
          ),
        ],
      ).paddingAll(16.0),
    );
  }
}
