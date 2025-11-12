import 'package:flutter/material.dart';

class CommonAppbar extends AppBar {
  final String titleLabel;
  final Function onTapBack;

  CommonAppbar({required this.titleLabel, required this.onTapBack, super.key})
    : super(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(titleLabel, style: TextStyle(fontWeight: FontWeight.bold),),
        leading: IconButton(
          onPressed: () {
            onTapBack();
          },
          icon: Icon(Icons.arrow_back),
        ),
      );
}
