import 'package:aya_mobile/fragments/home_fragment.dart';
import 'package:aya_mobile/utils/drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:aya_mobile/components/BottomNavigationBarWidget.dart';

class DashboardScreen extends StatefulWidget {
  static String tag = '/MLDashboardScreen';

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;
  List<Widget> widgets = [
    HomeFragment(),
    // MLChatFragment(),
    //MLCalendarFragment(),
    //MLNotificationFragment(),
    //MLProfileFragment(),
  ];

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  void dispose() {
    setStatusBarColor(Colors.white);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //drawer: DrawerWidget(),
        // appBar: AyaAppBar(),
        backgroundColor: white,
        body: widgets[_currentIndex],
        bottomNavigationBar: new BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
              icon: new Icon(
                Icons.home,
                color: Color(0xFFb01c2e),
              ),
              title: new Text(
                "Home",
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(
                FontAwesomeIcons.userMd,
                color: Color(0xFFb01c2e),
              ),
              title: new Text(
                "Students",
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(
                FontAwesomeIcons.addressBook,
                color: Color(0xFFb01c2e),
              ),
              title: new Text(
                "Internship",
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(
                FontAwesomeIcons.peopleArrows,
                color: Color(0xFFb01c2e),
              ),
              title: new Text(
                "Knowledge Base",
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(
                Icons.person,
                color: Color(0xFFb01c2e),
              ),
              title: new Text(
                "Profile",
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
          ],
        ),
        // bottomNavigationBar: Container(
        //   color: Colors.white,
        //   child: showBottomDrawer(),
        // ),
      ),
    );
  }

  Widget showBottomDrawer() {
    return BottomNavigationBarWidget(
      index: _currentIndex,
      onTap: (index) {
        setState(() {});
        _currentIndex = index;
      },
    );
  }
}
