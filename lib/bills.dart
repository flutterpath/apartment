import 'package:apartment_find/utill/my_color.dart';
import 'package:apartment_find/widgets/appBar/appBarWithBack.dart';
import 'package:apartment_find/widgets/dashLines.dart';
import 'package:apartment_find/widgets/textWidget/greyText.dart';
import 'package:flutter/material.dart';

class BillsPage extends StatefulWidget {
  @override
  _BillsPageState createState() => _BillsPageState();
}

class _BillsPageState extends State<BillsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarWithBack(title: "Bills",),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300],
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                 child: Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: Row(
                     children: [
                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           GreyText(text: "FRI",),
                           Text("27", style: TextStyle(fontSize: 20, color: MyColors.accent, fontWeight: FontWeight.bold),),
                           GreyText(text: "Apr",),
                         ],
                       ),
                       SizedBox(width: 10,),
                       VerticalDivider(color: MyColors.divider,),
                       Expanded(
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Row(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Image.asset("assets/icons/wifiIcon.png", height: MediaQuery.of(context).size.height*0.05,),
                                 SizedBox(width: 10,),
                                 Container(
                                   height: MediaQuery.of(context).size.height*0.05,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text(
                                         "\$291",
                                         style: TextStyle(
                                             fontSize: 16,
                                             color: MyColors.boldText,
                                             fontWeight: FontWeight.bold
                                         ),
                                       ),
                                       GreyText(text: "Internet VNPT")
                                     ],
                                   ),
                                 ),
                               ],
                             ),
                             Divider(color: MyColors.divider,),
                             Row(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Image.asset("assets/icons/carIcon.png", height: MediaQuery.of(context).size.height*0.05,),
                                 SizedBox(width: 10,),
                                 Flexible(
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text(
                                         "\$291",
                                         style: TextStyle(
                                             fontSize: 16,
                                             color: MyColors.boldText,
                                             fontWeight: FontWeight.bold
                                         ),
                                       ),
                                       GreyText(text: "Car ( 28B - 0124- 85 )BMW 4-Series Convertible")
                                     ],
                                   ),
                                 ),
                               ],
                             ),
                           ],
                         ),
                       )
                     ],
                   ),
                 ),
                ),
                Stack(
                  overflow: Overflow.visible,
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 60,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[300],
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 20.0,
                            ),
                          ],
                          color: MyColors.primary,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "TOTAL",
                            style: TextStyle(
                              color: MyColors.white,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "\$736",
                            style: TextStyle(
                              color: MyColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(bottom: 60,child: DashLines(dashColor: MyColors.primary, dashHeight: 3,)),
                    Positioned(
                      bottom: 50,
                      left: 0,
                      child: Container(height: 20,width: 10,decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [MyColors.mediumGrey, MyColors.lightGrey],
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                        ),
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), topRight: Radius.circular(10)),
                      ),),
                    ),
                    Positioned(
                      bottom: 50,
                      right: 0,
                      child: Container(height: 20,width: 10,decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [MyColors.mediumGrey, MyColors.lightGrey],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topLeft: Radius.circular(10)),
                      ),),
                    ),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
