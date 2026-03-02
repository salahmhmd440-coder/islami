import 'package:flutter/material.dart';
import 'package:islame_app2/core/colors_app.dart';
import 'package:islame_app2/core/style_app.dart';

class CardAzkar extends StatelessWidget {
  String nameAzkr;
  String imageAzkr;
   CardAzkar({super.key,required this.nameAzkr,required this.imageAzkr});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 260,
      decoration:BoxDecoration(
          color: Color(0xff202020),
          border: Border.all(color:AppColors.primary,width: 3),
          borderRadius: BorderRadius.circular(20)
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Image.asset("assets/images/$imageAzkr.png"),
         Text(nameAzkr,style: AppStyle.titleStyle.copyWith(color: Colors.white),)
        ],
      ) ,
    );
  }
}
