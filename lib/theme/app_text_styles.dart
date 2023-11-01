import 'package:flutter/material.dart';

abstract class AppTextStyles {
  TextStyle get hpFont;
  TextStyle get robotoSlab;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get hpFont => const TextStyle(
        fontFamily: 'HarryPotter',
      );

  @override
  TextStyle get robotoSlab =>
      const TextStyle(fontFamily: 'RobotoSlab', fontSize: 12.0);
}
