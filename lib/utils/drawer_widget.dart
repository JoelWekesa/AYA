import 'package:aya_mobile/components/facility_list_component.dart';
import 'package:aya_mobile/components/knowledgebase.dart';
import 'package:aya_mobile/fragments/home_fragment.dart';
import 'package:aya_mobile/screens/dashboard_screen.dart';
import 'package:aya_mobile/screens/license_screen.dart';
import 'package:aya_mobile/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:sweet_alert_dialogs/sweet_alert_dialogs.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      child: Drawer(
        elevation: 1,
        child: Column(
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return HomeFragment();
                  }));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        DrawerHeader(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: Divider.createBorderSide(context,
                                      color: Colors.transparent, width: 0))),
                          child: Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Expanded(
                                    flex: 2,
                                    child: Image.asset(
                                        'images/mediLab/images/ml_appointment_booked.png')),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'AYA ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    fontSize: 32.0,
                                  ),
                                ),
                                Text(
                                  'Mobile',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    fontSize: 32.0,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ListButtons(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return LicenceHistory();
                            }));
                          },
                          icon: Icons.perm_identity,
                          text: 'Licence',
                        ),
                        ListButtons(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ProfileDetailScreen();
                            }));
                          },
                          icon: Icons.badge,
                          text: 'Profile',
                        ),
                        // ListButtons(
                        //   onTap: () {
                        //     Navigator.push(context,
                        //         MaterialPageRoute(builder: (context) {
                        //       return PaymentCardDetailsRoute();
                        //     }));
                        //   },
                        //   icon: Icons.badge,
                        //   text: 'Renew License',
                        // ),
                        ListButtons(
                          onTap: () {},
                          icon: Icons.location_on,
                          text: 'Student Internship',
                        ),
                        ListButtons(
                          onTap: () {},
                          icon: FontAwesomeIcons.hospital,
                          text: 'CPD',
                        ),
                        ListButtons(
                          onTap: () {},
                          icon: FontAwesomeIcons.userFriends,
                          text: 'Supervisory & Monitoring',
                        ),
                        ListButtons(
                          onTap: () async {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (_) => KnowledgeBase()),
                            );
                          },
                          icon: FontAwesomeIcons.readme,
                          text: 'Knowledge Base',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListButtons extends StatelessWidget {
  final String? text;
  final icon;
  final onTap;
  ListButtons({this.text, this.icon, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 9),
      child: InkWell(
        splashColor: Color(0xffBA6ABC3),
        onTap: onTap,
        focusColor: Colors.green,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              text!,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
            leading: Icon(
              icon,
              size: 25,
              color: Colors.grey.shade600,
            ),
          ),
        ),
      ),
    );
  }
}

class FormItem extends StatelessWidget {
  final String? hintText;
  final String? helperText;
  final Function? onChanged;
  final bool isNumber;
  final IconData? icon;
  final controller;

  FormItem(
      {this.hintText,
      this.helperText,
      this.onChanged,
      this.icon,
      this.isNumber: false,
      this.controller});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      margin: EdgeInsets.all(5),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                  color: Color(0xffaf5676), style: BorderStyle.solid)),
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide:
                  BorderSide(color: Colors.indigo, style: BorderStyle.solid)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                  color: Color(0xffaf5676), style: BorderStyle.solid)),
        ),
        onChanged: (String value) {
          onChanged!(value);
        },
        controller: controller,
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      ),
    );
  }
}

class AyaAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height = 20;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('AYA '),
              Text(
                'Mobile',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          centerTitle: true,
          elevation: 1,
          actions: <Widget>[
            GestureDetector(
              // onTap: () {
              //   Navigator.of(context).push(
              //     MaterialPageRoute(builder: (_) => ProfilePage()),
              //   );
              // },
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.perm_identity,
                  size: 30,
                  color: Color(0xff5e444d),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
