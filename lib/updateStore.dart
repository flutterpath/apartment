import 'package:apartment_find/utill/my_color.dart';
import 'package:apartment_find/widgets/appBar/appBarWithSuffix.dart';
import 'package:apartment_find/widgets/cards/addPhotoCard.dart';
import 'package:apartment_find/widgets/textField/basicTextField.dart';
import 'package:apartment_find/widgets/textWidget/greyText.dart';
import 'package:flutter/material.dart';

class UpdateStore extends StatefulWidget {
  @override
  _UpdateStoreState createState() => _UpdateStoreState();
}

class _UpdateStoreState extends State<UpdateStore> {

  TextEditingController _storeName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarWithSuffix(
            title: "Update Store",
            color: MyColors.primary,
            suffix: Text(
              "Save",
              style: TextStyle(
                  fontSize: 16,
                  color: MyColors.grey
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GreyText(text :"Name Store"),
                BasicTextField(hintText: "Enter store name",),
                SizedBox(height: 20,),
                GreyText(text: "Address"),
                BasicTextField(hintText: "Enter Address",),
                SizedBox(height: 20,),
                GreyText(text: "About the store"),
                BasicTextField(hintText: "Description",),
                SizedBox(height: 20,),
                GreyText(text: "Store Logo"),
                SizedBox(height: 10,),
                AddPhotoCard(),
                SizedBox(height: 20,),
                GreyText(text: "Store Front Photo"),
                SizedBox(height: 10,),
                AddPhotoCard(),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
