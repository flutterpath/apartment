import 'package:apartment_find/dashboard/tabbarPages/latestNews.dart';
import 'package:apartment_find/utill/my_color.dart';
import 'package:apartment_find/widgets/circularTabIndicator.dart';
import 'package:apartment_find/widgets/cards/createPost.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> with
    TickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body : Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
            child: CreatePostCard(heading: "Keangnam Hanoi",subHeading: "No posts",imagePath: "assets/avatar/avatar2.png",),
          ),
    TabBar(
      controller: _tabController,
    indicatorSize: TabBarIndicatorSize.tab,
    indicator: CircleTabIndicator(color: MyColors.black, radius: 4),
    isScrollable: true,
    labelColor: Colors.black,
    unselectedLabelColor: MyColors.grey,
    tabs: [
    Tab(text: 'Latest news'),
    Tab(text: 'Hot news'),
    Tab(text: 'System news'),

    ],
    ),
          Container(
            height: MediaQuery.of(context).size.height-251,
            child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  LatestNews(),
                  LatestNews(),
                  LatestNews(),
                ]),
          )
        ],
      ),
      ),
    );
  }
}
