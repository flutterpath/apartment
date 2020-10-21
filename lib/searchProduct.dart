import 'package:apartment_find/utill/my_color.dart';
import 'package:apartment_find/widgets/appBar/appBarWithBack.dart';
import 'package:apartment_find/widgets/choiceChip.dart';
import 'package:apartment_find/widgets/textField/searchTextField.dart';
import 'package:flutter/material.dart';

class SearchProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          AppBarWithBack(
            title: "Search product",
          ),


          //put apartmentNotFound() if there is no apartment

          // ApartmentNotFound(),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              children: [
                SearchTextField(),
                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Products",
                    style: TextStyle(
                        fontSize: 18,
                        color: MyColors.primary,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: MediaQuery.of(context).size.height-180,
                  child: Wrap(
                    children: [
                      CustomChoiceChip(
                        text: "Food",
                        isSelected: false,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomChoiceChip(
                        text: "Drinks",
                        isSelected: false,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomChoiceChip(
                        text: "Voucher",
                        isSelected: false,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomChoiceChip(
                        text: "Sportswear",
                        isSelected: false,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomChoiceChip(
                        text: "Book",
                        isSelected: false,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomChoiceChip(
                        text: "Groceries",
                        isSelected: false,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomChoiceChip(
                        text: "Dairy",
                        isSelected: false,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomChoiceChip(
                        text: "Vegetables",
                        isSelected: false,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
