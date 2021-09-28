import 'package:aya_mobile/components/home_top_component.dart';
import 'package:aya_mobile/utils/drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:aya_mobile/components/home_bottom_component.dart';

class HomeFragment extends StatefulWidget {
  static String tag = '/HomeFragment';

  @override
  _HomeFragmentState createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Aya App',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontFamily: 'Quicksand',
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              HomeTopComponent(),
              16.height,
              HomeBottomComponent(),
              64.height,
            ],
          ),
        ),
      ),
    );
  }
}
