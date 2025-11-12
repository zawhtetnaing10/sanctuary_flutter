import 'package:flutter/material.dart';
import 'package:sanctuary_flutter/core/utils/colors.dart';
import 'package:sanctuary_flutter/core/utils/dimens.dart';

class PrimaryButton extends StatelessWidget {
  final double? width;
  final String label;
  final Color backgroundColor;
  final Function onTap;

  const PrimaryButton({
    super.key,
    required this.label,
    required this.width,
    required this.backgroundColor,
    required this.onTap,
  });

  const PrimaryButton.fullWidthPrimary({
    super.key,
    required this.label,
    this.width = double.infinity,
    this.backgroundColor = kPrimaryColor,
    required this.onTap,
  });

  const PrimaryButton.intrinsicWidthPrimary({
    super.key,
    required this.label,
    this.width = null,
    this.backgroundColor = kPrimaryColor,
    required this.onTap,
  });

  const PrimaryButton.fullWidthSecondary({
    super.key,
    required this.label,
    this.width = double.infinity,
    this.backgroundColor = kSecondaryButtonColor,
    required this.onTap,
  });

  const PrimaryButton.intrinsicWidthSecondary({
    super.key,
    required this.label,
    this.width = null,
    this.backgroundColor = kSecondaryButtonColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: kMarginXXLarge,
      child: TextButton(
        onPressed: (){
          onTap();
        },
        style: TextButton.styleFrom(backgroundColor: backgroundColor),
        child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: kTextRegular2x,
          ),
        ),
      ),
    );
  }
}
