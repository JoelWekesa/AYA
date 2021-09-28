import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:aya_mobile/components/MLCountryPIckerComponent.dart';
import 'package:aya_mobile/components/MLSocialAccountComponent.dart';
import 'package:aya_mobile/screens/ConfirmPhoneNumberScreen.dart';
import 'package:aya_mobile/utils/MLColors.dart';
import 'package:aya_mobile/utils/MLCommon.dart';
import 'package:aya_mobile/utils/MLImage.dart';
import 'package:aya_mobile/utils/MLString.dart';

class RegistrationScreen extends StatefulWidget {
  static String tag = '/MLRegistrationScreen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: mlPrimaryColor,
        body: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 250),
              padding: EdgeInsets.only(right: 16.0, left: 16.0),
              decoration: boxDecorationWithRoundedCorners(
                  borderRadius: radiusOnly(topRight: 32)),
              height: context.height(),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    48.height,
                    Text(mlRegister!, style: boldTextStyle(size: 28)),
                    8.height,
                    Text('Register to continue',
                        style: secondaryTextStyle(size: 16)),
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
                    16.height,
                    AppTextField(
                      textFieldType: TextFieldType.PASSWORD,
                      decoration: InputDecoration(
                        labelText: mlPassword!,
                        labelStyle: secondaryTextStyle(size: 16),
                        prefixIcon: Icon(Icons.lock_outline, size: 20),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: mlColorLightGrey),
                        ),
                      ),
                    ),
                    16.height,
                    AppTextField(
                      textFieldType: TextFieldType.PASSWORD,
                      decoration: InputDecoration(
                        labelText: mlReenter_password!,
                        labelStyle: secondaryTextStyle(size: 16),
                        prefixIcon: Icon(Icons.lock_outline, size: 20),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: mlColorLightGrey),
                        ),
                      ),
                    ),
                    32.height,
                    AppButton(
                      width: double.infinity,
                      color: mlPrimaryColor,
                      onTap: () {
                        return ConfirmPhoneNumberScreen().launch(context);
                      },
                      child:
                          Text(mlRegister!, style: boldTextStyle(color: white)),
                    ),
                    20.height,
                    Align(
                      alignment: Alignment.center,
                      child: Text(mlLogin_with!,
                          style: secondaryTextStyle(size: 16)),
                    ),
                    20.height,
                    MLSocialAccountsComponent(),
                    32.height,
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 75),
              width: double.infinity,
              child: Image.asset(
                ml_ic_register_indicator!,
                alignment: Alignment.center,
                width: 200,
                height: 200,
              ),
            ),
            Positioned(
              top: 30,
              child: mlBackToPrevious(context, whiteColor),
            ),
          ],
        ).center(),
      ),
    );
  }
}
