import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame_app2/core/style_app.dart';
import 'package:islame_app2/models/hadith_model.dart';
import 'package:islame_app2/screen/hadith_details/hadith_details.dart';



class HadethTap extends StatefulWidget {
 HadethTap({super.key});

  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  @override
  void initState() {

    super.initState();
    LoadHadithFile();
  }
  List<HadithModel> allAhadthData =[];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image:
          AssetImage("assets/images/quran_bg.png"),fit: BoxFit.cover)
      ),
      child: CarouselSlider(
        options: CarouselOptions(height: double.infinity),
        items: allAhadthData.map((model) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                margin: EdgeInsets.only(top: 150),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset("assets/images/hadith_card_bg.png",
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 100,),
                        Text(model.title,style: AppStyle.titleStyleSuraAr,),
                        Expanded(
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                              itemCount:model.content.length ,
                              itemBuilder: (context,index){
                                return  InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(
                                        context, HadithDetails.routeName,
                                        arguments: model);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Text(model.content[index],
                                      maxLines: 8,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.hadithStyleDetails,),
                                  ),
                                );
                              }),
                        ),
                        SizedBox(height: 160,)
                      ],
                    )
                  ],
                ),
              );


            },
          );
        }).toList(),
      )
    );
  }

  LoadHadithFile()async{
    String hadithFile= await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allAhadeth = hadithFile.split("#");

    for(int i=0; i< allAhadeth.length ;i++){
      String hadithOne =allAhadeth[i];
      List<String> hadithLins = hadithOne.trim().split("\n");
      String title = hadithLins[0];
      hadithLins.removeAt(0);
      List<String> hadithContent = hadithLins;
      print(title);
      allAhadthData.add(HadithModel(title, hadithContent));
    }
    setState(() {

    });
  }
}
