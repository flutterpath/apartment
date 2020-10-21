import 'package:apartment_find/utill/my_color.dart';
import 'package:apartment_find/widgets/buttons/RoundedButton.dart';
import 'package:flutter/material.dart';

class OrderHistory extends StatefulWidget {
  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20,bottom: 100, top: 100),
            child: Align(alignment: Alignment.centerRight,child: Image.asset("assets/icons/addIcon.png")),
          ),
          Image.asset("assets/images/noOrders.png", scale: 1.2,),
          SizedBox(height: 30,),
          Text("You have no orders!", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          RoundedButton(buttonText: "Add Orders", textColor: MyColors.white, buttonAlignment: MainAxisAlignment.center, boxDecoration: BoxDecoration(color: MyColors.primary, borderRadius: BorderRadius.circular(30),),buttonWidth: MediaQuery.of(context).size.width*0.6, textSize: 16,)
        ],
      ),
    );
  }
}
