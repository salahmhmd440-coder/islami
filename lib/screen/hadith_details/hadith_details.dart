import 'package:flutter/material.dart';
import 'package:islame_app2/core/colors_app.dart';
import 'package:islame_app2/core/style_app.dart';
import 'package:islame_app2/models/hadith_model.dart';

class HadithDetails extends StatelessWidget {
  static const String routeName= "HadithDetails";
  const HadithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var model=ModalRoute.of(context)?.settings.arguments as HadithModel;
    return Scaffold(
        backgroundColor: AppColors.bg,
        appBar: AppBar(
          backgroundColor: AppColors.bg,
          iconTheme: IconThemeData(
              color: AppColors.primary
          ),
          title: Text(model.title,style: AppStyle.titleStyle,),
          centerTitle: true,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset("assets/images/sura_bg.png",fit: BoxFit.cover,),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(model.title,style: AppStyle.titleStyleSuraAr.copyWith(
                        color: AppColors.primary),),
                  ),

                  SizedBox(height: 20,),
                  Expanded(
                    child: ListView.builder(
                        itemCount: model.content.length,
                        itemBuilder: (context,index)=>Center(child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(model.content[index],
                            textAlign: TextAlign.center,
                            style: AppStyle.hadithStyleDetails.copyWith(color: AppColors.primary),),
                        ))
                    ),
                  ),
                  SizedBox(height: 100,)
                ],
              ),

            ],
          ),
        )
    );
  }
}
