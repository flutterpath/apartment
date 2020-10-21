import 'package:apartment_find/utill/my_color.dart';
import 'package:apartment_find/widgets/appBar/appBarWithBack.dart';
import 'package:apartment_find/widgets/appBar/appbarTitle.dart';
import 'package:apartment_find/widgets/circularTabIndicator.dart';
import 'package:apartment_find/widgets/cards/orderCard.dart';
import 'package:flutter/material.dart';

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> with TickerProviderStateMixin{
  
  TabController _tabController;

  @override
  void initState() {
    _tabController  = TabController(vsync: this,length: 5);
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarWithBack(
            title: "My Orders",
          ),
          TabBar(
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: CircleTabIndicator(color: MyColors.black, radius: 4),
            isScrollable: true,
            labelColor: Colors.black,
            unselectedLabelColor: MyColors.grey,
            tabs: [
              Tab(text: 'Wait for confirmation'),
              Tab(text: 'Preparing goods'),
              Tab(text: 'Finish'),
              Tab(text: 'Order canceled by seller'),
              Tab(text: 'Order canceled by buyer'),

            ],
          ),
          Container(
            height: 250,
            child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  OrderCard(),
                  OrderCard(),
                  OrderCard(),
                  OrderCard(),
                  OrderCard()
                ]),
          )
        ],
      ),
    );
  }
}
