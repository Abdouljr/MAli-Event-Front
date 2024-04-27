import 'package:flutter/material.dart';
import 'size_configs.dart';

const Color kPrimaryColor = Color(0xFF0094ED);
const Color kSecondaryColor = Color(0xFF68798B);
const Color kScaffoldBackground = Color(0xffFFF3E9);

final kTitle = TextStyle(
  fontFamily: 'Klasik',
  fontSize: SizeConfig.blockSizeH! * 8,
  fontWeight: FontWeight.w400,
  color: kScaffoldBackground,
);

final kTitle2 = TextStyle(
  fontFamily: 'Klasik',
  fontSize: SizeConfig.blockSizeH! * 6,
  color: kScaffoldBackground,
);

final kBodyText1 = TextStyle(
  color: kScaffoldBackground,
  fontSize: SizeConfig.blockSizeH! * 4.5,
  fontWeight: FontWeight.bold,
);
final kBodyText4 = TextStyle(
  color: kPrimaryColor,
  fontSize: SizeConfig.blockSizeH! * 4.5,
  fontWeight: FontWeight.w400,
);

final kBodyText2 = TextStyle(
  color: kSecondaryColor,
  fontSize: SizeConfig.blockSizeH! * 4,
  fontWeight: FontWeight.bold,
);

final kBodyText3 = TextStyle(
    color: kSecondaryColor,
    fontSize: SizeConfig.blockSizeH! * 3.8,
    fontWeight: FontWeight.normal);

final kInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(12),
  borderSide: BorderSide.none,
);

final kInputHintStyle = kBodyText2.copyWith(
  fontWeight: FontWeight.normal,
  color: kSecondaryColor.withOpacity(0.5),
);
