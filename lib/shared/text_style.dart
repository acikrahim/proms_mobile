import 'package:flutter/material.dart';
import 'package:proms_mobile/shared/colors.dart';

class TxtStyle {
  TextStyle h2() {
    return const TextStyle(
      fontSize: 48,
      fontFamily: 'SpaceGrotesk',
      fontWeight: FontWeight.w600,
      color: Colors.black
    );
  }

  TextStyle h4() {
    return const TextStyle(
      fontSize: 40,
      fontFamily: 'SpaceGrotesk',
      fontWeight: FontWeight.w600,
      color: Colors.black
    );
  }

  TextStyle h6() {
    return const TextStyle(
      fontSize: 32,
      fontFamily: 'SpaceGrotesk',
      fontWeight: FontWeight.w600,
      color: Colors.black
    );
  }

  TextStyle h6Grey() {
    return const TextStyle(
      fontSize: 24,
      fontFamily: 'SpaceGrotesk',
      fontWeight: FontWeight.w600,
      color: Colors.grey
    );
  }
  
  TextStyle btnText() {
    return const TextStyle(
      fontSize: 16,
      fontFamily: 'SpaceGrotesk',
      fontWeight: FontWeight.w600,
      color: Colors.white70
    );
  }
}
