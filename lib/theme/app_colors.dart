import 'dart:ui';

abstract class AppColors {
  Color get darkBrown;
  Color get lighterBrown;
  Color get gryffYellow;
  Color get gryffYellowDark;
  Color get gryffRed;
  Color get lighterYellow;
}

class AppColorsDefault extends AppColors {
  @override
  Color get darkBrown => const Color(0xFF413029);

  @override
  Color get gryffRed => const Color(0xFF750001);

  @override
  Color get gryffYellow => const Color(0xFFFFC500);

  @override
  Color get gryffYellowDark => const Color(0xFFD88300);

  @override
  Color get lighterBrown => const Color(0xFFE1CCA2);

  @override
  Color get lighterYellow => const Color(0xFFFFF9C4);
}
