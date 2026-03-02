import 'package:flutter/material.dart';
import 'package:islame_app2/core/colors_app.dart';
import 'package:islame_app2/screen/home/taps/hadeth_tap.dart';
import 'package:islame_app2/screen/home/taps/qrane_tap.dart';
import 'package:islame_app2/screen/home/taps/riduo_tap.dart';
import 'package:islame_app2/screen/home/taps/sebha_tap.dart';
import 'package:islame_app2/screen/home/taps/tim_tap.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName="Home";
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int selectedTap=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202020),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.primary,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          currentIndex: selectedTap,
          onTap: (value){
            selectedTap = value;
            setState(() {

            });
          },
          items: [
        BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon:_getNavBar("ic_quran",0)
            ,label: "Quran"),
        BottomNavigationBarItem(icon:_getNavBar("ic_hadeth",1),label: "Hadeth"),
        BottomNavigationBarItem(icon:_getNavBar("ic_sebha",2),label: "Sebha"),
        BottomNavigationBarItem(icon:_getNavBar("ic_radio",3) ,label: "Radio"),
        BottomNavigationBarItem(icon:_getNavBar("ic_time",4),label: "Time"),
      ]),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          tabs[selectedTap],
          Image.asset("assets/images/islami_top.png")
        ],
      ),

    );

  }
   List<Widget> tabs = [
   QraneTap(),
   HadethTap(),
     SebhaTap(),
     RiduoTap(),
     TimTap(),
   ];
  Widget _getNavBar(String image, int index){
    return selectedTap==index?Container(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 3),
        decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.circular(24)
        ),
        child: ImageIcon(AssetImage("assets/images/$image.png"))
    )
        :ImageIcon(AssetImage("assets/images/$image.png"));
  }

}
