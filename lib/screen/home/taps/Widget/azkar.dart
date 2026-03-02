import 'package:flutter/material.dart';
import 'package:islame_app2/core/style_app.dart';
import 'package:islame_app2/screen/home/taps/Widget/cardAzkar.dart';

class AzkarItm extends StatelessWidget {
  const AzkarItm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20,),
          Text("Azkar",
            textAlign: TextAlign.start,
            style: AppStyle.titleStyle.copyWith(color: Colors.white),),
          Row(
            spacing: 20,
            children: [
              CardAzkar(
                imageAzkr: "evening_azkar",
                nameAzkr: "Evening Azkar",
              ),
              CardAzkar(
                imageAzkr: "morning_azkar",
                nameAzkr: "Morning Azkar",
              )
            ],
          ),
        ],
      ),
    );
  }
}
