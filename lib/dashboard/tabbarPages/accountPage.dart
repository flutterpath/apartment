import 'package:apartment_find/utill/my_color.dart';
import 'package:apartment_find/widgets/cards/bigCard.dart';
import 'package:apartment_find/widgets/cards/cardWithIcon.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  Widget cardWithTitle({String imagePath, String title, String subText}){
    return Column(
      children: [
        CardWithIcon(
          imagePath: imagePath,
        ),
        Container(
            padding: EdgeInsets.only(top: 5),
            width: 90,
            child: (subText == null) ? Text(title, textAlign: TextAlign.center, style: TextStyle(fontSize: 14, color: MyColors.white),)
                :
            Column(
              children: [
                Text(title, textAlign: TextAlign.center, style: TextStyle(fontSize: 14, color: MyColors.white),),
                Text(subText),
              ],
            )
        ),
      ],
    );
  }

  Widget listTile({String leadingImage, String title}){
    return Padding(
      padding: const EdgeInsets.only(left: 15,right: 20,bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(leadingImage, height: 15,),
                  SizedBox(width: 10,),
                  Text(title, style: TextStyle(fontSize: 16),),
                ],
              ),
              Image.asset("assets/icons/forwardIcon.png", height: 15,),
            ],
          ),
          SizedBox(height: 10,),
          Divider(color: MyColors.divider,)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.primary,
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
            child: BigCard(imagePath: "assets/avatar/avatar.png",heading: "Jack Riputtin",subHeading: "Hot news",),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15,bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                cardWithTitle(imagePath : "assets/cardIcons/timer.png", title : "Wait for confirmation"),
                cardWithTitle(imagePath: "assets/cardIcons/list.png", title: "Prepare goods"),
                cardWithTitle(imagePath: "assets/cardIcons/status.png", title: "Finish", subText: "  "),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.7,
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 0.0),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40)),
                ),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  listTile(leadingImage : "assets/icons/personSmallIcon.png", title : "Edit account", ),
                  listTile(leadingImage : "assets/icons/buildingIcon.png", title : "My Apartment", ),
                  listTile(leadingImage : "assets/icons/bagIcon.png", title : "My article", ),
                  listTile(leadingImage : "assets/icons/infoIcon.png", title : "Information about us", ),
                  listTile(leadingImage : "assets/icons/shareIcon.png", title : "Share with friends", ),
                ]
              ),
            ),
          )
        ],
      ),
    );
  }
}
