import 'package:apartment_find/utill/my_color.dart';
import 'package:apartment_find/widgets/textField/searchTextField.dart';
import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(flex: 5,child: SearchTextField(controller: _controller,)),
                  Expanded(flex: 1,child: Image.asset("assets/icons/shoppingBagIcon.png", height: 30,)),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: MyColors.lightGrey,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Row(
                  children: [
                    Icon(Icons.arrow_forward, color: MyColors.accent,),
                    SizedBox(width: 5,),
                    Text("Los Angeles, California, US", style: TextStyle(color: MyColors.primary, fontSize: 16),)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(radius: 25,child: Image.asset("assets/avatar/avatar.png")),
                          SizedBox(width: 10,),
                          Container(
                            height: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jack Riputtin",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: MyColors.boldText,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 7,),
                                Text(
                                  "Los Angeles, California",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: MyColors.subText
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Image.asset("assets/icons/forwardIcon.png", height: 20),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
