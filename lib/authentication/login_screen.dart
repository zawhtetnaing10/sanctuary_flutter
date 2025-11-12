import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sanctuary_flutter/core/utils/constants.dart';
import 'package:sanctuary_flutter/core/widgets/primary_button.dart';
import 'package:sanctuary_flutter/core/widgets/sanctuary_password_field.dart';
import 'package:sanctuary_flutter/core/widgets/sanctuary_text_field.dart';
import 'package:sanctuary_flutter/core/utils/colors.dart';
import 'package:sanctuary_flutter/core/utils/dimens.dart';
import 'package:sanctuary_flutter/core/utils/images.dart';
import 'package:sanctuary_flutter/core/utils/strings.dart';

/// Login Screen
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(
            top: kMarginXXLarge,
            left: kMarginMedium2,
            right: kMarginMedium2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                kAppLogo,
                width: kAppLogoWidth,
                height: kAppLogoHeight,
              ),
              Padding(
                padding: EdgeInsets.only(top: kMarginXLarge),
                child: SanctuaryTextField(
                  hint: kHintUserNameOrEmail,
                  onChanged: (text) {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: kMarginLarge),
                child: SanctuaryPasswordField(
                  hint: kHintPassword,
                  onChanged: (text) {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: kMarginLarge),
                child: PrimaryButton.fullWidthPrimary(
                  label: kLogin,
                  onTap: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: kMarginLarge),
                child: Text(
                  kNoAccount,
                  style: TextStyle(color: kTextFieldHintColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: kMarginLarge),
                child: PrimaryButton.fullWidthSecondary(
                  label: kSignUp,
                  onTap: () {
                    context.pushNamed(kRegisterRoute);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: kMarginLarge),
                child: Text(
                  kTermsAndConditions,
                  style: TextStyle(color: kTextFieldHintColor),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
