import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:islame_app2/core/colors_app.dart';

class AppStyle{
  static TextStyle titleStyle=GoogleFonts.lalezar(fontSize: 24,
   fontWeight: FontWeight.bold,
    color: AppColors.primary
  );
  static TextStyle bodyStyle=GoogleFonts.cairo(fontSize: 20,
      fontWeight: FontWeight.bold,
      color: AppColors.primary
  );
  static TextStyle filedStyle=GoogleFonts.lalezar(fontSize: 16,
      fontWeight: FontWeight.bold,
      color: AppColors.textColor
  );
  static TextStyle titleStyleQrane=GoogleFonts.lalezar(fontSize: 20,
      fontWeight: FontWeight.bold,
      color: AppColors.textColor
  );
  static TextStyle numberStyleSura=GoogleFonts.lalezar(fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.textColor
  );
  static TextStyle titleStyleSuraAr=GoogleFonts.lalezar(fontSize: 30,
      fontWeight: FontWeight.bold,
      color: AppColors.titleColorSura
  );
  static TextStyle titleStyleSuraEn=GoogleFonts.lalezar(fontSize: 20,
      fontWeight: FontWeight.bold,
      color: AppColors.titleColorSura
  );
  static TextStyle numberRecentSura=GoogleFonts.lalezar(fontSize: 16,
      fontWeight: FontWeight.bold,
      color: AppColors.titleColorSura
  );

  static TextStyle hadithStyleDetails=GoogleFonts.amiri(fontSize: 26,
      fontWeight: FontWeight.bold,
      color: AppColors.titleColorSura,
  );

}