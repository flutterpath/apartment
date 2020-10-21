import 'package:apartment_find/utill/my_color.dart';
import 'package:apartment_find/widgets/appBar/appBarWithBack.dart';
import 'package:apartment_find/widgets/buttons/RoundedButton.dart';
import 'package:apartment_find/widgets/buttons/outlineRoundedButton.dart';
import 'package:apartment_find/widgets/cards/apartmentCard.dart';
import 'package:apartment_find/widgets/textField/searchTextField.dart';
import 'package:flutter/material.dart';

class SearchApartment extends StatefulWidget {
  @override
  _SearchApartmentState createState() => _SearchApartmentState();
}

class _SearchApartmentState extends State<SearchApartment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          AppBarWithBack(
            title: "Search",
          ),


          //put apartmentNotFound() if there is no apartment

          // ApartmentNotFound(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20, bottom: 20),
                child: SearchTextField(),
              ),
      Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Container(
              height: MediaQuery.of(context).size.height-180,
              child: GridView.builder(
                  itemCount: 20,
                  gridDelegate:
                  new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 20, childAspectRatio: 0.79),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){},
                      child: ApartmentCard(),
                    );
                  }),
        ),
      ),
            ],
          )
        ],
      ),
    );
  }
}
