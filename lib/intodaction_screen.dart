import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islame_app2/core/cach_hlper.dart';
import 'package:islame_app2/core/colors_app.dart';
import 'package:islame_app2/core/style_app.dart';
import 'package:islame_app2/screen/home/home_screen.dart';

class IntroductionScreens extends StatelessWidget {
  static const String routeName="IntroductionScreens";
  IntroductionScreens({super.key});
   var listPagesViewModel=[
     PageViewModel(
       titleWidget: Text( "Welcome To Islmi App",style:AppStyle.titleStyle ,),
       body: "",
       image: Image.asset("assets/images/intro1.png",),

     ),
     PageViewModel(
       titleWidget: Text( "Welcome To Islmi App",style:AppStyle.titleStyle ,),
       bodyWidget: Text( "We Are Very Excited To Have You In Our Community",
         textAlign: TextAlign.center,
         style:AppStyle.bodyStyle ,),
       image: Image.asset("assets/images/intro2.png",),

     ),
     PageViewModel(
       titleWidget: Text( "Reading the Quran",style:AppStyle.titleStyle ,),
       bodyWidget: Text( "Read, and your Lord is the Most Generous",
         textAlign: TextAlign.center,
         style:AppStyle.bodyStyle ,),

       image: Image.asset("assets/images/intro3.png"),

     ),
     PageViewModel(

       titleWidget: Text( "Bearish",style:AppStyle.titleStyle ,),
       bodyWidget: Text( "Praise the name of your Lord, the Most High",
         textAlign: TextAlign.center,
         style:AppStyle.bodyStyle ,),

       image: Image.asset("assets/images/intro4.png"),

     ),
     PageViewModel(
       titleWidget: Text( "Holy Quran Radio",style:AppStyle.titleStyle ,),
       bodyWidget: Text( "You can listen to the Holy Quran Radio through the application for free and easily",
         textAlign: TextAlign.center,
         style:AppStyle.bodyStyle ,),
       image: Image.asset("assets/images/intro5.png"),

     ),
  ];
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Color(0xff202020),
      pages: listPagesViewModel,
      globalHeader:Image.asset("assets/images/islami_top.png") ,
      bodyPadding: EdgeInsets.only(top: 228),
      dotsFlex: 2,
      showSkipButton: true,
      showNextButton: true,
      showBackButton: true,
      dotsDecorator: DotsDecorator(
        color: AppColors.gray,
        activeColor: AppColors.primary,
        activeSize: Size(25, 10),
          activeShape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8)
          )
      ),
      next:Text("Next",style: AppStyle.bodyStyle ,),
      back: Icon(Icons.arrow_back_ios,size: 20,color: AppColors.primary,),
      skip: Text("Skip",style: AppStyle.bodyStyle ,),
      onSkip: ()async{
        await CachHlper.saveBool(true);
        Navigator.pushNamed(context, HomeScreen.routeName);
      },
      done:  Text("Done",style: AppStyle.bodyStyle ,),
      onDone: ()async{
        await CachHlper.saveBool(true);
        Navigator.pushNamed(context, HomeScreen.routeName);
      },
    );
  }
}
