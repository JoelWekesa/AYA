import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class MLCountryPickerComponent extends StatefulWidget {
  static String tag = '/MLCountryPickerComponent';

  @override
  MLCountryPickerComponentState createState() =>
      MLCountryPickerComponentState();
}

class MLCountryPickerComponentState extends State<MLCountryPickerComponent> {
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
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Icon(Icons.arrow_drop_down, size: 16).paddingRight(0.0),
      ],
    );
  }
}
