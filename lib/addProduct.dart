import 'package:apartment_find/utill/my_color.dart';
import 'package:apartment_find/widgets/appBar/appBarWithSuffix.dart';
import 'package:apartment_find/widgets/cards/addPhotoCard.dart';
import 'package:apartment_find/widgets/textField/basicTextField.dart';
import 'package:apartment_find/widgets/textWidget/greyText.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {

  TextEditingController _storeName;
  TextEditingController _product;

  List<String> products = [
    "Food",
    "Drinks",
    "Voucher",
    "Men's Fashion",
    "Women's fashion",
    "Child fashion",
    "Sportswear",
    "Health & Beauty",
    "Electronic device"
  ];

  @override
  void initState() {
    _storeName = TextEditingController();
    _product = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarWithSuffix(
            title: "Add Products",
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
                GreyText(text :"Product's name"),
                BasicTextField(hintText: "Enter product name",),
                SizedBox(height: 20,),
                GreyText(text: "Product portfolio"),
                BasicTextField(hintText: "Choose product",readOnly: true,controller: _product,suffixIcon: Icon(Icons.arrow_drop_down, color: MyColors.primary,),onTap: (){
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(20.0)), //this right here
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment : Alignment.center,
                                  child: Text(
                                    "Product portfolio",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: MyColors.black
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                ListView.separated(
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) => Divider(
                                    color: MyColors.divider,
                                  ),
                                  itemCount: products.length,
                                  itemBuilder: (context, index) => Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: (){
                                        _product.text = products[index];
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        products[index],
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: MyColors.black
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ),
                        );
                      });
                },),
                SizedBox(height: 20,),
                GreyText(text: "Price"),
                BasicTextField(hintText: "Enter price",),
                SizedBox(height: 20,),
                GreyText(text :"Number of products"),
                BasicTextField(hintText: "Enter number",),
                SizedBox(height: 20,),
                GreyText(text :"Product information"),
                BasicTextField(hintText: "Enter product information",),
                SizedBox(height: 20,),
                GreyText(text: "Store Logo"),
                SizedBox(height: 10,),
                AddPhotoCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
