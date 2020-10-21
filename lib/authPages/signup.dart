import 'package:apartment_find/animation/fadeAnimation.dart';
import 'package:apartment_find/utill/my_color.dart';
import 'package:apartment_find/widgets/buttons/RoundedButton.dart';
import 'package:apartment_find/widgets/existingUser.dart';
import 'package:apartment_find/widgets/textField/roundedTextField.dart';
import 'package:apartment_find/widgets/forgotPassword.dart';
import 'package:apartment_find/widgets/headLineText.dart';
import 'package:apartment_find/widgets/verticalText.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [MyColors.primary, MyColors.primaryLight]),
        ),
        child: ListView(
          children: <Widget>[
            Row(children: <Widget>[
              VerticalText(text: "Sign up",),
              FadeAnimation(delay: 1,child: HeadLingText(text: "Let's start something new with",)),
            ]),
            SizedBox(height: height*0.1,),
      FadeAnimation(delay: 1.2,child: RoundedTextField( hintText: "Full Name",),),
        FadeAnimation(delay: 1.3,child: RoundedTextField( hintText: "Email",),),
    FadeAnimation(delay: 1.4,child: RoundedTextField( hintText: "Password", suffixIcon: Icon(Icons.visibility_off, color: Colors.black,),obscureText: true,),),
    FadeAnimation(delay: 1.5,child: RoundedTextField( hintText: "Confirm Password", suffixIcon: Icon(Icons.visibility_off, color: Colors.black,),obscureText: true,),),
    FadeAnimation(delay: 1.7,child: FadeAnimation(delay : 1.4,child: RoundedButton(buttonText: "SIGN UP",),),),
    FadeAnimation(delay: 1.8,child: FadeAnimation(delay: 1.6,child: ExistingUser(),),),
          ],
        ),
      ),
    );
  }
}