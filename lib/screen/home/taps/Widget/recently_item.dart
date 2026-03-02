import 'package:flutter/material.dart';
import 'package:islame_app2/core/colors_app.dart';
import 'package:islame_app2/core/style_app.dart';
import 'package:islame_app2/models/sura_model.dart';

class RecentlyItem extends StatelessWidget {
  SuraModel model;
 RecentlyItem({super.key,required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(model.nameAr,style: AppStyle.titleStyleSuraAr,),
                Text(model.nameEn,style: AppStyle.titleStyleSuraEn,),
                Text("${model.countSura} verses",style: AppStyle.numberRecentSura,)
              ],
            ),
            )
          ),
          Expanded(

              child: Image.asset("assets/images/recent.png"))
        ],
      ),
    );
  }
}
