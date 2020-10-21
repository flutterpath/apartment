import 'package:apartment_find/animation/fadeAnimation.dart';
import 'package:apartment_find/utill/my_color.dart';
import 'package:apartment_find/widgets/buttons/RoundedButton.dart';
import 'package:apartment_find/widgets/textField/roundedTextField.dart';
import 'package:apartment_find/widgets/firstTimeUser.dart';
import 'package:apartment_find/widgets/forgotPassword.dart';
import 'package:apartment_find/widgets/headLineText.dart';
import 'package:apartment_find/widgets/verticalText.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
              VerticalText(text: "Sign in",),
              FadeAnimation(delay: 1,child: HeadLingText(text: "A world of Apartments in an app",)),
            ]),
             SizedBox(height: height*0.1,),
             FadeAnimation(delay: 1.2,child: RoundedTextField( hintText: "Email",)),
            FadeAnimation(delay: 1.3,child: RoundedTextField( hintText: "Password", suffixIcon: Icon(Icons.visibility_off, color: Colors.black,),obscureText: true,)),
      SizedBox(height: 10,),
      FadeAnimation(delay: 1.4,child :Forgot(),),
      FadeAnimation(delay: 1.5,child: FadeAnimation(delay : 1.4,child: RoundedButton(buttonText: "SIGN IN",),),),
        FadeAnimation(delay: 1.6,child: FadeAnimation(delay: 1.6,child: FirstTimeUser(),),),
          ],
        ),
      ),
    );
  }
}