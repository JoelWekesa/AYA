import 'package:aya_mobile/utils/MLColors.dart';
import 'package:aya_mobile/utils/img.dart';
import 'package:aya_mobile/utils/my_text_style.dart';
import 'package:aya_mobile/utils/tools.dart';
import 'package:flutter/material.dart';

class LicenseApplicationScreen extends StatefulWidget {
  LicenseApplicationScreen();

  @override
  LicenseApplicationScreenState createState() =>
      new LicenseApplicationScreenState();
}

class LicenseApplicationScreenState extends State<LicenseApplicationScreen> {
  String licenseNo = "***********";
  String dateApplied = "YYYY-MM-DD";
  String dateExpire = "YYYY-MM-DD";
  String cardName = "Work STation";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.grey[900],
        title: Text("Application Of Licence"),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(height: 5),
            Container(
              height: 240,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.amber[900],
                  elevation: 2,
                  margin: EdgeInsets.all(0),
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(Img.get('ml_department_three.png'),
                          fit: BoxFit.cover),
                      Container(
                        margin: EdgeInsets.all(20),
                        alignment: Alignment.bottomRight,
                        child: Image.asset(Img.get("ml_department_three.png"),
                            width: 60, height: 60),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Spacer(),
                                Image.asset(Img.get("ml_department_three.png"),
                                    color: Colors.white,
                                    fit: BoxFit.cover,
                                    width: 60,
                                    height: 30),
                              ],
                            ),
                            Container(height: 10),
                            Text(licenseNo,
                                style: MyText.headline(context)!.copyWith(
                                    color: Colors.white,
                                    fontFamily: "monospace")),
                            Container(height: 10),
                            Row(
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("DATE APPLIED",
                                        style: MyText.body1(context)!
                                            .copyWith(color: MyColors.grey_10)),
                                    Container(height: 5),
                                    Text(dateApplied,
                                        style: MyText.subhead(context)!
                                            .copyWith(
                                                color: Colors.white,
                                                fontFamily: "monospace")),
                                  ],
                                ),
                                Container(width: 50),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("EXPIRING DATE",
                                        style: MyText.body1(context)!
                                            .copyWith(color: MyColors.grey_10)),
                                    Container(height: 5),
                                    Text(dateExpire,
                                        style: MyText.subhead(context)!
                                            .copyWith(
                                                color: Colors.white,
                                                fontFamily: "monospace")),
                                  ],
                                ),
                                Container(width: 40)
                              ],
                            ),
                            Container(height: 25),
                            Text(cardName,
                                style: MyText.subhead(context)!.copyWith(
                                    color: Colors.white,
                                    fontFamily: "monospace")),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextField(
                    maxLines: 1,
                    maxLength: 19,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "License number", counterText: ''),
                    onChanged: (val) {
                      setState(() {
                        if (val.length < 2) {
                          licenseNo = "**********";
                        } else {
                          licenseNo = Tools.getFormattedCardNo(val);
                        }
                      });
                    },
                  ),
                  Container(height: 15),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: TextField(
                          maxLines: 1,
                          maxLength: 10,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintText: "YYYY/MM/DD", counterText: ''),
                          onChanged: (val) {
                            setState(() => dateApplied = val);
                          },
                        ),
                        flex: 1,
                      ),
                      Container(width: 15),
                      Flexible(
                        child: TextField(
                          maxLines: 1,
                          maxLength: 10,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "YYYY-MM-DD", counterText: ''),
                          onChanged: (val) {
                            setState(() => dateExpire = val);
                          },
                        ),
                        flex: 1,
                      )
                    ],
                  ),
                  Container(height: 15),
                  TextField(
                    maxLines: 1,
                    maxLength: 50,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: "Work Station", counterText: ''),
                    onChanged: (val) {
                      setState(() => cardName = val);
                    },
                  ),
                  Container(height: 25),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.amber[900], elevation: 0),
                      child: Text(
                        "CONTINUE TO PAYMENT",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
