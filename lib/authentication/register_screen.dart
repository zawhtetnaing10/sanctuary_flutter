import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sanctuary_flutter/core/utils/colors.dart';
import 'package:sanctuary_flutter/core/utils/constants.dart';
import 'package:sanctuary_flutter/core/utils/strings.dart';
import 'package:sanctuary_flutter/core/widgets/common_appbar.dart';
import 'package:sanctuary_flutter/core/widgets/sanctuary_button.dart' show SanctuaryButton;
import 'package:sanctuary_flutter/core/widgets/sanctuary_password_field.dart';
import 'package:sanctuary_flutter/core/widgets/sanctuary_text_field.dart';

import '../core/utils/dimens.dart';

/// Register Screen
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppbar(
        titleLabel: kCreateAccount,
        onTapBack: () {
          context.pop();
        },
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(
            top: kMarginLarge,
            left: kMarginMedium2,
            right: kMarginMedium2,
          ),
          child: Column(
            children: [
              SanctuaryTextField(hint: kHintEmail, onChanged: (text) {}),
              Padding(
                padding: EdgeInsets.only(top: kMarginLarge),
                child: SanctuaryPasswordField(
                  hint: kHintPassword,
                  onChanged: (password) {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: kMarginLarge),
                child: SanctuaryButton.fullWidthPrimary(
                  label: kSignUp,
                  onTap: () {
                    context.pushNamed(kPersonalInfoRoute);
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
