import 'package:flutter/material.dart';
import 'package:sanctuary_flutter/core/utils/colors.dart';
import 'package:sanctuary_flutter/core/utils/dimens.dart';

class SanctuaryPasswordField extends StatefulWidget {
  final String hint;
  final Function(String) onChanged;

  const SanctuaryPasswordField({
    super.key,
    required this.hint,
    required this.onChanged,
  });

  @override
  State<SanctuaryPasswordField> createState() => _SanctuaryPasswordFieldState();
}

class _SanctuaryPasswordFieldState extends State<SanctuaryPasswordField> {
  bool isPasswordShown = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: kTextFieldBackgroundColor,
        filled: true,
        hint: Text(
          widget.hint,
          style: TextStyle(color: kTextFieldHintColor, fontSize: kTextRegular2x),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(kMarginCardMedium2)),
          borderSide: BorderSide.none,
        ),
        // TODO: - Turn to stateful and add action
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isPasswordShown = !isPasswordShown;
            });
          },
          icon: Icon(
            (isPasswordShown) ? Icons.visibility : Icons.visibility_off,
            color: kTextFieldHintColor,
          ),
        ),
      ),
      obscureText: !isPasswordShown,
      onChanged: (text) {
        widget.onChanged(text);
      },
    );
  }
}
