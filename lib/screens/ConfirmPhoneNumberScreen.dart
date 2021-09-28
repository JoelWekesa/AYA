import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:aya_mobile/components/MLCountryPIckerComponent.dart';
import 'package:aya_mobile/screens/UpdateProfileScreen.dart';
import 'package:aya_mobile/utils/MLColors.dart';
import 'package:aya_mobile/utils/MLCommon.dart';
import 'package:aya_mobile/utils/MLImage.dart';
import 'package:aya_mobile/utils/MLString.dart';

class ConfirmPhoneNumberScreen extends StatefulWidget {
  static String tag = '/MLConfirmPhoneNumberScreen';

  @override
  _ConfirmPhoneNumberScreenState createState() =>
      _ConfirmPhoneNumberScreenState();
}

class _ConfirmPhoneNumberScreenState extends State<ConfirmPhoneNumberScreen> {
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
      backgroundColor: mlPrimaryColor,
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 24.0),
            decoration: boxDecorationWithRoundedCorners(
                borderRadius: radiusOnly(topRight: 32)),
            padding: EdgeInsets.all(16.0),
            height: context.height(),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  56.height,
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Image.asset(ml_ic_verifyindicator!,
                        alignment: Alignment.centerLeft,
                        width: 200,
                        height: 200),
                  ),
                  32.height,
                  Text(mlContact_msg!, style: boldTextStyle(size: 24)),
                  8.height,
                  Text(mlContact_sub_msg!, style: secondaryTextStyle(size: 16)),
                  16.height,
                  Row(
                    children: [
                      MLCountryPickerComponent(),
                      AppTextField(
                        textFieldType: TextFieldType.PHONE,
                        decoration: InputDecoration(
                          labelText: mlPhoneNumber,
                          labelStyle: secondaryTextStyle(size: 16),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: mlColorLightGrey),
                          ),
                        ),
                      ).expand(),
                    ],
                  ),
                  24.height,
                  AppButton(
                    width: double.infinity,
                    color: mlColorDarkBlue,
                    onTap: () => UpdateProfileScreen().launch(context),
                    child: Text(mlSend!, style: boldTextStyle(color: white)),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 30,
            child: mlBackToPrevious(context, blackColor),
          ),
        ],
      ),
    );
  }
}
