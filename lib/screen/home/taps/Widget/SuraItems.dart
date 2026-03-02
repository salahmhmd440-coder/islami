import 'package:flutter/material.dart';
import 'package:islame_app2/core/style_app.dart';
import 'package:islame_app2/models/sura_model.dart';

class Suraitems extends StatelessWidget {
  SuraModel model;
  Suraitems({super.key,required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding:EdgeInsets.zero,
      leading:  Stack(
        alignment: Alignment.center,
          children: [
        Image.asset("assets/images/sura_number.png",width: 50,height: 50,),
        Text("${model.numberSura}",style: AppStyle.titleStyleQrane,)
           ],
      ) ,
      title:  Text(model.nameEn,style: AppStyle.titleStyleQrane,),
      subtitle:  Text("${model.countSura} verses",style: AppStyle.numberStyleSura,),
      trailing: Text(model.nameAr,style: AppStyle.titleStyleQrane,) ,
    );

  }
}
