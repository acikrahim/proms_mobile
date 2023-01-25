import 'package:flutter/material.dart';

class BtnStyle {
  ButtonStyle submitBtn() {
    return ButtonStyle(
      minimumSize: MaterialStateProperty.all(const Size.fromHeight(40)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(Colors.blue.shade400),
      shadowColor: MaterialStateProperty.all(Colors.transparent),
    );
  }

  ButtonStyle backButton() {
    return ButtonStyle(
      minimumSize: MaterialStateProperty.all(const Size.fromHeight(40)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(Colors.redAccent.shade700),
      shadowColor: MaterialStateProperty.all(Colors.transparent),
    );
  }
}
