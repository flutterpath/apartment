import 'package:apartment_find/addProduct.dart';
import 'package:apartment_find/bills.dart';
import 'package:apartment_find/myApartment.dart';
import 'package:apartment_find/myOrders.dart';
import 'package:apartment_find/myStore.dart';
import 'package:apartment_find/updateStore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.dark,
    statusBarColor: Colors.transparent, // status bar color
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apartment Finder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AddProduct(),
      debugShowCheckedModeBanner: false,
    );
  }
}

