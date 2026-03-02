import 'package:flutter/material.dart';
import 'package:islame_app2/core/colors_app.dart';
import 'package:islame_app2/core/style_app.dart';

class SebhaTap extends StatefulWidget {
  const SebhaTap({super.key});

  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> with SingleTickerProviderStateMixin  {
  int counter = 1;
  List<String> tasbehText = [
    "سبحان الله",
    "الحمد لله",
    "الله أكبر",
  ];
  int currentIndex  = 0;
  double rotationValue = 0.0;
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }
  void rotateIcon() {
    rotationValue += 0.25;

    if (rotationValue >= 1.0) {
      rotationValue = 0.0;
    }

    controller.animateTo(rotationValue);
  }
  void counterSebha(){
    setState(() {
      counter++;
      if(counter == 34){
        counter=1;
        currentIndex++;
        if(currentIndex == tasbehText.length){
          currentIndex=0;
        }
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/sebha_bg.png")
              ,fit: BoxFit.cover
          ),

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          SizedBox(height: 217,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
              textAlign: TextAlign.center,
              style: AppStyle.bodyStyle.copyWith(color: AppColors.textColor,fontSize: 36),),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
               SizedBox(
                 width: double.infinity,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Image.asset("assets/images/sebha.png",width: 145,
                     height: 86,
                     ),
                     Center(
                   child: RotationTransition(
                     turns: controller,
                     child:  Image.asset("assets/images/sebhabody.png"),
                   ),
                     )
                   ],
                 ),
               ),
                InkWell(
                  onTap:(){
                    rotateIcon();
                    counterSebha();
                  },
                  child: Column(
                    spacing: 20,
                    children: [

                      Container(
                          padding:EdgeInsets.only(top: 70),
                          child: Text(tasbehText[currentIndex], style: AppStyle.bodyStyle.copyWith(color: AppColors.textColor,fontSize: 36),)),
                      Text("${counter}", style: AppStyle.bodyStyle.copyWith(color: AppColors.textColor,fontSize: 36),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

}
