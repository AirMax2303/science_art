import 'package:flutter/material.dart';

import 'app_pallete.dart';

/// Абстракция для поставки базовых цветовых токенов в приложении
///
/// Абстракция фиксирует договоренность c UX командой по цветовым псевдонимам
/// Обратите внимание, именование отражает логическую суть применения цвета
abstract class AppColorTheme {
  //============================== Main Colors ==============================
  Brightness get brightness;

  Color get black10;

  Color get black9;

  Color get black8;

  Color get black7;

  Color get black6;

  Color get black5;

  Color get black4;

  Color get black3;

  Color get black2;

  Color get accentOrange;

  Color get accentViolet;

  Color get labelYellow;

  Color get labelBlue;

  Color get labelViolet;

  Color get labelGreen;

  Color get labelBrown;

  Color get labelRed;

  Color get black05;

  Color get black1;
}

/// Реализация светлой цветовой темы, связывающей цветовые псевдонимы с установленной палитрой
class LightColorTheme implements AppColorTheme {
  @override
  Brightness get brightness => Brightness.light;

  //============================== Customization color tokens ==============================

  //============================== Overlay color tokens ==============================

  const LightColorTheme() : super();

  @override
  Color get black10 => AppPallete.black10;

  @override
  Color get black9 => AppPallete.black9;

  @override
  Color get black4 => AppPallete.black4;

  @override
  Color get black7 => AppPallete.black7;

  @override
  Color get black2 => AppPallete.black2;

  @override
  Color get accentOrange => AppPallete.orange;

  @override
  Color get accentViolet => AppPallete.violet;

  @override
  Color get labelYellow => AppPallete.labelYellow;

  @override
  Color get labelBlue => AppPallete.labelBlue;

  @override
  Color get labelViolet => AppPallete.labelViolet;

  @override
  Color get labelGreen => AppPallete.labelGreen;

  @override
  Color get labelBrown => AppPallete.labelBrown;

  @override
  Color get labelRed => AppPallete.labelRed;

  @override
  Color get black5 => AppPallete.black5;

  @override
  Color get black05 => AppPallete.black05;

  @override
  Color get black6 => AppPallete.black6;

  @override
  Color get black3 => AppPallete.black3;

  @override
  Color get black8 => AppPallete.black8;

  @override
  Color get black1 => AppPallete.black1;
}

/// Реализация темной цветовой темы, связывающей цветовые псевдонимы с установленной палитрой
class DarkRedColorTheme extends LightColorTheme {
  const DarkRedColorTheme() : super();
}
