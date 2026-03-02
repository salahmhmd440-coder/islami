import 'package:flutter/material.dart';
import 'package:islame_app2/core/cach_hlper.dart';
import 'package:islame_app2/core/colors_app.dart';
import 'package:islame_app2/core/style_app.dart';
import 'package:islame_app2/models/sura_model.dart';
import 'package:islame_app2/screen/home/taps/Widget/SuraItems.dart';
import 'package:islame_app2/screen/home/taps/Widget/recently_item.dart';
import 'package:islame_app2/screen/sura_details/sura_details.dart';

class QraneTap extends StatefulWidget {
 QraneTap({super.key});

  @override
  State<QraneTap> createState() => _QraneTapState();
}

class _QraneTapState extends State<QraneTap> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    createSuraList();
    filteredSura = allSuras;
  }
  List<String> arabicAuranSuras = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  List<String> englishQuranSurahs = [
    "Al-Fatiha",
    "Al-Baqarah",
    "Aal-E-Imran",
    "An-Nisa'",
    "Al-Ma'idah",
    "Al-An'am",
    "Al-A'raf",
    "Al-Anfal",
    "At-Tawbah",
    "Yunus",
    "Hud",
    "Yusuf",
    "Ar-Ra'd",
    "Ibrahim",
    "Al-Hijr",
    "An-Nahl",
    "Al-Isra",
    "Al-Kahf",
    "Maryam",
    "Ta-Ha",
    "Al-Anbiya",
    "Al-Hajj",
    "Al-Mu'minun",
    "An-Nur",
    "Al-Furqan",
    "Ash-Shu'ara",
    "An-Naml",
    "Al-Qasas",
    "Al-Ankabut",
    "Ar-Rum",
    "Luqman",
    "As-Sajda",
    "Al-Ahzab",
    "Saba",
    "Fatir",
    "Ya-Sin",
    "As-Saffat",
    "Sad",
    "Az-Zumar",
    "Ghafir",
    "Fussilat",
    "Ash-Shura",
    "Az-Zukhruf",
    "Ad-Dukhan",
    "Al-Jathiya",
    "Al-Ahqaf",
    "Muhammad",
    "Al-Fath",
    "Al-Hujurat",
    "Qaf",
    "Adh-Dhariyat",
    "At-Tur",
    "An-Najm",
    "Al-Qamar",
    "Ar-Rahman",
    "Al-Waqi'a",
    "Al-Hadid",
    "Al-Mujadila",
    "Al-Hashr",
    "Al-Mumtahina",
    "As-Saff",
    "Al-Jumu'a",
    "Al-Munafiqun",
    "At-Taghabun",
    "At-Talaq",
    "At-Tahrim",
    "Al-Mulk",
    "Al-Qalam",
    "Al-Haqqah",
    "Al-Ma'arij",
    "Nuh",
    "Al-Jinn",
    "Al-Muzzammil",
    "Al-Muddathir",
    "Al-Qiyamah",
    "Al-Insan",
    "Al-Mursalat",
    "An-Naba'",
    "An-Nazi'at",
    "Abasa",
    "At-Takwir",
    "Al-Infitar",
    "Al-Mutaffifin",
    "Al-Inshiqaq",
    "Al-Buruj",
    "At-Tariq",
    "Al-A'la",
    "Al-Ghashiyah",
    "Al-Fajr",
    "Al-Balad",
    "Ash-Shams",
    "Al-Lail",
    "Ad-Duha",
    "Ash-Sharh",
    "At-Tin",
    "Al-Alaq",
    "Al-Qadr",
    "Al-Bayyina",
    "Az-Zalzalah",
    "Al-Adiyat",
    "Al-Qari'a",
    "At-Takathur",
    "Al-Asr",
    "Al-Humazah",
    "Al-Fil",
    "Quraysh",
    "Al-Ma'un",
    "Al-Kawthar",
    "Al-Kafirun",
    "An-Nasr",
    "Al-Masad",
    "Al-Ikhlas",
    "Al-Falaq",
    "An-Nas"
  ];

  List<String> AyaNumber = [
    '7',
    '286',
    '200',
    '176',
    '120',
    '165',
    '206',
    '75',
    '129',
    '109',
    '123',
    '111',
    '43',
    '52',
    '99',
    '128',
    '111',
    '110',
    '98',
    '135',
    '112',
    '78',
    '118',
    '64',
    '77',
    '227',
    '93',
    '88',
    '69',
    '60',
    '34',
    '30',
    '73',
    '54',
    '45',
    '83',
    '182',
    '88',
    '75',
    '85',
    '54',
    '53',
    '89',
    '59',
    '37',
    '35',
    '38',
    '29',
    '18',
    '45',
    '60',
    '49',
    '62',
    '55',
    '78',
    '96',
    '29',
    '22',
    '24',
    '13',
    '14',
    '11',
    '11',
    '18',
    '12',
    '12',
    '30',
    '52',
    '52',
    '44',
    '28',
    '28',
    '20',
    '56',
    '40',
    '31',
    '50',
    '40',
    '46',
    '42',
    '29',
    '19',
    '36',
    '25',
    '22',
    '17',
    '19',
    '26',
    '30',
    '20',
    '15',
    '21',
    '11',
    '8',
    '5',
    '19',
    '5',
    '8',
    '8',
    '11',
    '11',
    '8',
    '3',
    '9',
    '5',
    '4',
    '6',
    '3',
    '6',
    '3',
    '5',
    '4',
    '5',
    '6'
  ];
  List<SuraModel> allSuras=[];
  List<SuraModel> filteredSura=[];

  void createSuraList(){
    for(int i=0 ; i<arabicAuranSuras.length; i++){
      allSuras.add(SuraModel(numberSura: i+1,
          nameAr: arabicAuranSuras[i], nameEn: englishQuranSurahs[i]
          , countSura: AyaNumber[i]));
    }
  }
  TextEditingController searchController = TextEditingController();
  void filterSura(String query){
    if(query.isEmpty){
      filteredSura = allSuras;
    }else{
      filteredSura = allSuras.where((model){
        return model.nameAr.contains(query)
            || model.nameEn.toLowerCase().contains(query.toLowerCase());
      }).toList();
      setState(() {

      });
    }
  }
  @override
  Widget build(BuildContext context) {
    List<int> displayMostRecent=CachHlper.getList("items");
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/hadeth_bg.png"),
            fit: BoxFit.cover
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            SizedBox(height: 192,),
            TextField(
              controller: searchController,
              onChanged:(value){
                filterSura(value);
              } ,
              cursorColor: AppColors.primary,
              style:AppStyle.filedStyle ,
              decoration: InputDecoration(
                prefixIcon: ImageIcon(AssetImage("assets/images/ic_quran.png"),color: AppColors.primary,),
                hintText: "Sura Name",
                hintStyle: AppStyle.filedStyle,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: AppColors.primary,width: 2)
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.primary)
                ),
              ),
            ),
            SizedBox(height: 10,),
            if(displayMostRecent.isNotEmpty)...[
              Text("Most Recently ",style: AppStyle.titleStyleQrane,),
              SizedBox(height: 10,),
              SizedBox(
                height: 150,
                child: ListView.separated(
                    itemBuilder: (context,index){
                      return RecentlyItem(
                          model: SuraModel(
                            numberSura: displayMostRecent[index]+1,
                            nameAr:arabicAuranSuras[displayMostRecent[index]] ,
                            nameEn: englishQuranSurahs[displayMostRecent[index]],
                            countSura: AyaNumber[displayMostRecent[index]],
                          )
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context,index)=>SizedBox(width: 12,),
                    itemCount: displayMostRecent.length),
              ),
            ],

            SizedBox(height: 10,),
            Text("Suras List",style: AppStyle.titleStyleQrane,),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.zero,
                separatorBuilder: (context,index)=>Divider(
                  color: Colors.white,
                  endIndent: 44,
                  indent: 44,

                ),
                itemCount: filteredSura.length,
                  itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    CachHlper.saveList(index);
                    Navigator.pushNamed(context,  SuraDetails.routeName,
                    arguments: filteredSura[index],
                    );
                    setState(() {

                    });
                  },
                  child: Suraitems(
                    model:filteredSura[index]
                    ),

                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
