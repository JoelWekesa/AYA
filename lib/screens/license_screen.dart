import 'package:aya_mobile/screens/license_application_screen.dart';
import 'package:aya_mobile/utils/MLColors.dart';
import 'package:aya_mobile/utils/img.dart';
import 'package:aya_mobile/utils/my_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LicenceHistory extends StatefulWidget {
  LicenceHistory();

  @override
  LicenceHistoryState createState() => new LicenceHistoryState();
}

class LicenceHistoryState extends State<LicenceHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
          elevation: 0,
          brightness: Brightness.dark,
          backgroundColor: MyColors.primary,
          title: Text("License Page"),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(width: 5),
                      Text("License History",
                          style: MyText.subhead(context)!.copyWith(
                              color: MyColors.grey_60,
                              fontWeight: FontWeight.bold)),
                      Spacer(),
                      Text("3 Card(s)",
                          style: MyText.subhead(context)!.copyWith(
                              color: MyColors.primary,
                              fontWeight: FontWeight.bold)),
                      Container(width: 5),
                    ],
                  ),
                  Container(height: 10),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    color: Colors.white,
                    elevation: 2,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("John Demo",
                                    style: MyText.medium(context).copyWith(
                                        color: MyColors.grey_80,
                                        fontWeight: FontWeight.bold)),
                                Container(height: 40),
                                Text("License Number",
                                    style: MyText.body1(context)!
                                        .copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("229451",
                                    style: MyText.subhead(context)!
                                        .copyWith(color: MyColors.grey_80)),
                                Container(height: 20),
                                Text("Work Station",
                                    style: MyText.body1(context)!
                                        .copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("Johpas Clinic",
                                    style: MyText.subhead(context)!
                                        .copyWith(color: MyColors.grey_80)),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Image.asset(
                                      Img.get("ml_department_three.png"),
                                      width: 40,
                                      height: 40),
                                ),
                                Container(height: 25),
                                Text("From Date.",
                                    style: MyText.body1(context)!
                                        .copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("2020-11-12",
                                    style: MyText.subhead(context)!
                                        .copyWith(color: MyColors.grey_80)),
                                Container(height: 20),
                                Text("Exp. Date",
                                    style: MyText.body1(context)!
                                        .copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("2021-11-30",
                                    style: MyText.subhead(context)!
                                        .copyWith(color: MyColors.grey_80)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(height: 5),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    color: Colors.white,
                    elevation: 2,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("John Demo",
                                    style: MyText.medium(context).copyWith(
                                        color: MyColors.grey_80,
                                        fontWeight: FontWeight.bold)),
                                Container(height: 40),
                                Text("License Number",
                                    style: MyText.body1(context)!
                                        .copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("229451",
                                    style: MyText.subhead(context)!
                                        .copyWith(color: MyColors.grey_80)),
                                Container(height: 20),
                                Text("Work Station",
                                    style: MyText.body1(context)!
                                        .copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("Johpas Clinic",
                                    style: MyText.subhead(context)!
                                        .copyWith(color: MyColors.grey_80)),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Image.asset(
                                      Img.get("ml_department_three.png"),
                                      width: 40,
                                      height: 40),
                                ),
                                Container(height: 25),
                                Text("From Date.",
                                    style: MyText.body1(context)!
                                        .copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("2020-11-12",
                                    style: MyText.subhead(context)!
                                        .copyWith(color: MyColors.grey_80)),
                                Container(height: 20),
                                Text("Exp. Date",
                                    style: MyText.body1(context)!
                                        .copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("2021-11-30",
                                    style: MyText.subhead(context)!
                                        .copyWith(color: MyColors.grey_80)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(height: 5),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    color: Colors.white,
                    elevation: 2,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("John Demo",
                                    style: MyText.medium(context).copyWith(
                                        color: MyColors.grey_80,
                                        fontWeight: FontWeight.bold)),
                                Container(height: 40),
                                Text("License Number",
                                    style: MyText.body1(context)!
                                        .copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("229451",
                                    style: MyText.subhead(context)!
                                        .copyWith(color: MyColors.grey_80)),
                                Container(height: 20),
                                Text("Work Station",
                                    style: MyText.body1(context)!
                                        .copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("Johpas Clinic",
                                    style: MyText.subhead(context)!
                                        .copyWith(color: MyColors.grey_80)),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Image.asset(
                                      Img.get("ml_department_three.png"),
                                      width: 40,
                                      height: 40),
                                ),
                                Container(height: 25),
                                Text("From Date.",
                                    style: MyText.body1(context)!
                                        .copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("2020-11-12",
                                    style: MyText.subhead(context)!
                                        .copyWith(color: MyColors.grey_80)),
                                Container(height: 20),
                                Text("Exp. Date",
                                    style: MyText.body1(context)!
                                        .copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("2021-11-30",
                                    style: MyText.subhead(context)!
                                        .copyWith(color: MyColors.grey_80)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(height: 15),
                ],
              ),
            )
          ],
        ),
      ),
      // ignore: deprecated_member_use
      floatingActionButton: FlatButton(
        color: Colors.brown,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return LicenseApplicationScreen();
          }));
        },
        child: Text(
          'Apply For License',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
