import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islame_app2/core/colors_app.dart';
import 'package:islame_app2/core/style_app.dart';

class TimeItems extends StatelessWidget {
  TimeItems({super.key});
  final List<Map<String, String>> prayerTimes = [
    {'name': 'Fajr', 'time': '04:04', 'period': 'AM'},
    {'name': 'Dhuhr', 'time': '01:01', 'period': 'PM'},
    {'name': 'ASR', 'time': '04:38', 'period': 'PM'},
    {'name': 'Maghrib', 'time': '07:57', 'period': 'PM'},
    {'name': 'Isha', 'time': '09:27', 'period': 'PM'},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Color(0xff856B3F),
            borderRadius: BorderRadius.circular(40)),
        child: Stack(children: [
          Image.asset(
            "assets/images/time_sala.png",
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("16 Jul,\n 2024",
                                textAlign: TextAlign.start,
                                style: AppStyle.filedStyle
                                    .copyWith(fontSize: 19)),
                          )),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Text("Pray Time",style: AppStyle.bodyStyle.copyWith(color: Color(0xB5202020)),),
                              SizedBox(height: 5),
                              Text("Tuesday",style: AppStyle.bodyStyle.copyWith(fontSize: 19,color: Color(0xff202020)),),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "09 Muh,\n 1446",
                              textAlign: TextAlign.end,
                              style: AppStyle.filedStyle.copyWith(fontSize: 19),
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 140.0,
                    enlargeCenterPage: true,
                    viewportFraction: 0.4,
                    initialPage: 2,
                  ),
                  items: prayerTimes.map((prayer) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff3E2C15), // Darker brown
                                Color(0xff9E7F56)
                                    .withOpacity(0.8), // Lighter brown
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Center(
                            child: Text("${prayer['name']} \n ${prayer['time']}\n ${prayer['period']}",
                              textAlign: TextAlign.center,
                              style: AppStyle.titleStyle.copyWith(color: Colors.white),),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text("Next Pray - 02:32",
                        textAlign: TextAlign.center,
                        style: AppStyle.titleStyle.copyWith(color:AppColors.bg,),
                    ),
                    SizedBox(width: 10),
                    IconButton(
                        onPressed: (){},
                        icon: ImageIcon(AssetImage("assets/images/muot.png"),color: AppColors.bg,size: 30,),
                    )
                  ],
                )
              ],
            ),
          ),
        ]));
  }
}
