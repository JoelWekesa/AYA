import 'package:flutter/material.dart';
import 'package:aya_mobile/utils/MLCommon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  static String tag = '/MLBottomNavigationBarWidget';
  final Function(int)? onTap;
  final int? index;

  BottomNavigationBarWidget({this.onTap, this.index});

  @override
  BottomNavigationBarWidgetState createState() =>
      BottomNavigationBarWidgetState();
}

class BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _currentIndex = 0;
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
    return BottomNavigationBar(
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
    );
  }

  bottomNavigationItem(IconData icon) {
    return BottomNavigationBarItem(
      icon: Icon(icon, size: 22),
      label: '',
      activeIcon: mlSelectedNavigationbarIcon(icon),
    );
  }
}
