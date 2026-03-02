import 'package:flutter/material.dart';
import 'package:islame_app2/core/cach_hlper.dart';
import 'package:islame_app2/screen/hadith_details/hadith_details.dart';
import 'package:islame_app2/screen/home/home_screen.dart';
import 'package:islame_app2/intodaction_screen.dart';

import 'package:islame_app2/screen/sura_details/sura_details.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CachHlper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:CachHlper.getBool("introduction") == true
          ? HomeScreen.routeName
          : IntroductionScreens.routeName,
      routes: {
        IntroductionScreens.routeName:(context)=>IntroductionScreens(),
        HomeScreen.routeName:(context)=>HomeScreen(),
        SuraDetails.routeName:(context)=>SuraDetails(),
        HadithDetails.routeName:(context)=>HadithDetails(),
      },
    );
  }
}

