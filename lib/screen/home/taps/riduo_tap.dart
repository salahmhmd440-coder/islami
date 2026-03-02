
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:islame_app2/core/colors_app.dart';
import 'package:islame_app2/core/style_app.dart';
import 'package:islame_app2/screen/home/taps/Widget/radio_items.dart';


class RiduoTap extends StatefulWidget  {
   const RiduoTap({super.key});

  @override
  State<RiduoTap> createState() => _RiduoTapState();
}

class _RiduoTapState extends State<RiduoTap> with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController =TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/radio_bg.png"),
              fit: BoxFit.cover)
      ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                SizedBox(height: 200,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Color(0xB2202020),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: TabBar(
                    dividerColor: Colors.transparent,
                    indicatorColor:AppColors.primary ,
                    labelColor: AppColors.primary,
                      indicatorSize: TabBarIndicatorSize.tab,
                      unselectedLabelColor: Colors.white,
                      controller:tabController ,
                      labelStyle: AppStyle.titleStyle,
                      tabs: [
                        Tab(child: Text("Radio")),
                         Tab(child: Text("Reciters")),
                  ]),
                ),
                SizedBox(height: 20,),
                Expanded(
                  child: TabBarView(
                    controller:tabController ,
                      children: [
                        Column(
                          children: [
                            Expanded(
                              child: ListView.separated(
                                padding: EdgeInsets.zero,
                                 itemCount:10,
                                 itemBuilder: (context, index) {
                                   return RadioItems(); },
                                separatorBuilder:(context, index)=>SizedBox(height: 10,),


                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Expanded(
                              child: ListView.separated(
                                padding: EdgeInsets.zero,
                                itemCount:10,
                                itemBuilder: (context, index) {
                                  return RadioItems(); },
                                separatorBuilder:(context, index)=>SizedBox(height: 10,),


                              ),
                            )
                          ],
                        ),
                      ]),
                )
              ],
            ),
          ),

    );
  }
}
