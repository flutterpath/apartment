import 'package:apartment_find/dashboard/tabbarPages/accountPage.dart';
import 'package:apartment_find/dashboard/tabbarPages/feedPage.dart';
import 'package:apartment_find/dashboard/tabbarPages/notification.dart';
import 'package:apartment_find/dashboard/tabbarPages/orderHistory.dart';
import 'package:apartment_find/dashboard/tabbarPages/storePage.dart';
import 'package:apartment_find/utill/my_color.dart';
import 'package:apartment_find/widgets/varticalTabBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: VarticalTabBar(

                  tabsElevation: 5,
                  tabsShadowColor: MyColors.primaryLight,
                  contentScrollAxis: Axis.vertical,
                  tabsWidth: MediaQuery.of(context).size.width*0.2,
                  tabs: <Tab>[
                    Tab(iconMargin: const EdgeInsets.all(20),icon: Image.asset('assets/tabbarIcon/feedIcon.png', height: 15,)),
                    Tab(icon: Image.asset('assets/tabbarIcon/notificationIcon.png',height: 15,)),
                    Tab(icon: Image.asset('assets/tabbarIcon/orderIcon.png',height: 7,)),
                    Tab(icon: Image.asset('assets/tabbarIcon/storeIcon.png',height: 15,)),
                    Tab(icon: Image.asset('assets/tabbarIcon/personIcon.png',height: 15,)),
                    Tab(icon: Image.asset('assets/tabbarIcon/logoutIcon.png',height: 15,color: MyColors.primary,)),
                  ],
                  contents: <Widget>[
                    FeedPage(),
                    NotificationPage(),
                    OrderHistory(),
                    StorePage(),
                    AccountPage(),
                    Container(
                        color: Colors.black12,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemExtent: 100,
                            itemBuilder: (context, index){
                              return Container(
                                margin: EdgeInsets.all(10),
                                color: Colors.white30,
                              );
                            })
                    ),
                  ],
                ),



              ),
            ),

          ],
        ),
    );
  }

  Widget tabsContent(String caption, [ String description = '' ] ) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      color: Colors.black12,
      child: Column(
        children: <Widget>[
          Text(
            caption,
            style: TextStyle(fontSize: 25),
          ),
          Divider(height: 20, color: Colors.black45,),
          Text(
            description,
            style: TextStyle(fontSize: 15, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}