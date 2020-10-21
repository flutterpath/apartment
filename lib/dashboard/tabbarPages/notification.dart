import 'package:apartment_find/utill/my_color.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index){
            return Column(
              children: [
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                    child: Row(
                      children: [
                        CircleAvatar(radius: 25,child: Image.asset("assets/avatar/avatar.png")),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Mike",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: MyColors.boldText,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "1 hours",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: MyColors.subText
                                    ),)
                                ],
                              ),
                              SizedBox(height: 7,),
                              Text(
                                "Has added a new member",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: MyColors.subText
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,)
              ],
            );
          },
        )
      ),
    );
  }
}
