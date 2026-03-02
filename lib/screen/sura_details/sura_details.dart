import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame_app2/core/colors_app.dart';
import 'package:islame_app2/core/style_app.dart';
import 'package:islame_app2/models/sura_model.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName="SuraDetails";
  SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List <String> verses = [];

  @override
  Widget build(BuildContext context) {
    var model=ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty){
      LoadSuraFil(model.numberSura);
    }

    return Scaffold(
      backgroundColor: AppColors.bg,
      appBar: AppBar(
        backgroundColor: AppColors.bg,
        iconTheme: IconThemeData(
          color: AppColors.primary
        ),
        title: Text(model.nameEn,style: AppStyle.titleStyle,),
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
                  child: Text(model.nameAr,style: AppStyle.titleStyleSuraAr.copyWith(
                      color: AppColors.primary),),
                ),
                Text("بِسْمِ اللَّه الرَّحْمَنِ الرَّحِيمِِ",style: AppStyle.titleStyle),
                SizedBox(height: 20,),
                Expanded(
                  child: ListView.builder(
                      itemCount: verses.length,
                      itemBuilder: (context,index)=>Center(child: Text(verses[index],
                        textAlign: TextAlign.center,
                        style: AppStyle.bodyStyle,))
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

  Future<void> LoadSuraFil(int index) async{
    String suraFile= await rootBundle.loadString("assets/files/$index.txt");
    List<String> suraLines = suraFile.split("\n");
    verses =suraLines;
    setState(() {

    });
  }
}
