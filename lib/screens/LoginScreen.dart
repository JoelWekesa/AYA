import 'package:aya_mobile/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:aya_mobile/components/MLCountryPIckerComponent.dart';
import 'package:aya_mobile/components/MLSocialAccountComponent.dart';
import 'package:aya_mobile/screens/ForgetPasswordScreen.dart';
import 'package:aya_mobile/screens/RegistrationScreen.dart';
import 'package:aya_mobile/utils/MLColors.dart';
import 'package:aya_mobile/utils/MLImage.dart';
import 'package:aya_mobile/utils/MLString.dart';

class LoginScreen extends StatefulWidget {
  static String tag = '/MLLoginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mlPrimaryColor,
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 200),
            height: context.height(),
            decoration: boxDecorationWithRoundedCorners(
                borderRadius: radiusOnly(topRight: 32)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  60.height,
                  Text(mlLogin_title!, style: secondaryTextStyle(size: 16)),
                  16.height,
                  Row(
                    children: [
                      MLCountryPickerComponent(),
                      AppTextField(
                        textFieldType: TextFieldType.PHONE,
                        decoration: InputDecoration(
                          labelText: mlPhoneNumber!,
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
                      prefixIcon: Icon(Icons.lock_outline),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: mlColorLightGrey),
                      ),
                    ),
                  ),
                  8.height,
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(mlForget_password!,
                            style: secondaryTextStyle(size: 16))
                        .onTap(() {
                      ForgetPasswordScreen().launch(context);
                    }),
                  ),
                  24.height,
                  AppButton(
                    color: mlPrimaryColor,
                    width: double.infinity,
                    onTap: () {
                      finish(context);
                      DashboardScreen().launch(context);
                    },
                    child: Text(mlLogin!, style: boldTextStyle(color: white)),
                  ),
                  22.height,
                  Text(mlLogin_with!, style: secondaryTextStyle(size: 16))
                      .center(),
                  22.height,
                  MLSocialAccountsComponent(),
                  22.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        mlDont_have_account!,
                        style: primaryTextStyle(),
                      ),
                      8.width,
                      Text(
                        mlRegister!,
                        style: boldTextStyle(
                            color: mlColorBlue,
                            decoration: TextDecoration.underline),
                      ).onTap(() {
                        RegistrationScreen().launch(context);
                      }),
                    ],
                  ),
                  32.height,
                ],
              ).paddingOnly(left: 16, right: 16),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 75),
            width: context.width(),
            child: Image.asset(
              ml_ic_register_indicator!,
              alignment: Alignment.center,
              width: 200,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
