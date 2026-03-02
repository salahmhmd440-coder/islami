import 'package:flutter/material.dart';
import 'package:islame_app2/core/colors_app.dart';
import 'package:islame_app2/core/style_app.dart';

class RadioItems extends StatefulWidget {
  const RadioItems({super.key});

  @override
  State<RadioItems> createState() => _RadioItemsState();
}

class _RadioItemsState extends State<RadioItems> {
  bool player=true;
  void togglePlayer() {

    setState(() {
      player = !player;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 133,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          player
              ?Container(
              margin: EdgeInsets.only(top: 32),
              child: Image.asset("assets/images/m.png"))
              :Container(
              margin: EdgeInsets.only(top:70),
              child: Image.asset("assets/images/vo.png",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,)),
          Container(
              margin: EdgeInsets.only(bottom: 80),
              child: Text("Radio Ibrahim Al-Akdar",style: AppStyle.bodyStyle.copyWith(color: Colors.black),)),
         player? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: togglePlayer,
                  icon: ImageIcon(AssetImage("assets/images/polygon.png"),size: 30,color: AppColors.bg,)
              ),
              IconButton(
                  onPressed: (){},
                  icon:Image.asset("assets/images/volume.png")
              ),

            ],
          ) : Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             IconButton(
                 onPressed: togglePlayer,
                 icon: ImageIcon(AssetImage("assets/images/pause.png"),size: 30,color: AppColors.bg,)
             ),
             IconButton(
                 onPressed: (){},
                 icon:Image.asset("assets/images/volume.png")
             ),

           ],
         ),


        ],
      ),
    );
  }


}
