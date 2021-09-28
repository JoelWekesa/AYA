import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:aya_mobile/screens/WalkThroughScreen.dart';
import 'package:aya_mobile/utils/MLImage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //
    init();
  }

  Future<void> init() async {
    await 3.seconds.delay;
    finish(context);
    WalkThroughScreen().launch(context);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        ml_ic_medilab_logo!,
        height: 150,
        width: 150,
        fit: BoxFit.fill,
      ).center(),
    );
  }
}
