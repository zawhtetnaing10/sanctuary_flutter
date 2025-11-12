import 'package:flutter/material.dart';
import 'package:sanctuary_flutter/core/utils/colors.dart';
import 'package:sanctuary_flutter/core/utils/dimens.dart';

class SanctuaryTextField extends StatelessWidget {
  final String hint;
  final Function(String) onChanged;

  const SanctuaryTextField({
    super.key,
    required this.hint,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: kTextFieldBackgroundColor,
        filled: true,
        hint: Text(
          hint,
          style: TextStyle(color: kTextFieldHintColor, fontSize: kTextRegular2x),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(kMarginCardMedium2)),
          borderSide: BorderSide.none,
        ),
      ),
      onChanged: (text) {
        onChanged(text);
      },
    );
  }
}
