import 'package:apartment_find/utill/my_color.dart';
import 'package:apartment_find/widgets/appBar/appBarWithSuffix.dart';
import 'package:apartment_find/widgets/cards/apartmentCard.dart';
import 'package:flutter/material.dart';

class MyApartment extends StatefulWidget {
  @override
  _MyApartmentState createState() => _MyApartmentState();
}

class _MyApartmentState extends State<MyApartment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarWithSuffix(
            title: "My apartment",
            color: MyColors.primary,
            suffix: Image.asset("assets/icons/addIcon.png",height: 25,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20, top: 20),
            child: Container(
              height: MediaQuery.of(context).size.height-180,
              child: GridView.builder(
                  itemCount: 1,
                  gridDelegate:
                  new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 20, childAspectRatio: 0.79),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){},
                      child: ApartmentCard(
                        widget: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                            color: MyColors.red,
                          ),
                          child: Image.asset(
                              "assets/icons/deleteIcon.png",
                            height: 20,
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
