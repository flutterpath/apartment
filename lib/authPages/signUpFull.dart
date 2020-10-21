import 'package:apartment_find/animation/fadeAnimation.dart';
import 'package:apartment_find/authPages/signIn.dart';
import 'package:apartment_find/utill/my_color.dart';
import 'package:apartment_find/widgets/textField/roundedTextField.dart';
import 'package:flutter/material.dart';

class SignUpFull extends StatefulWidget {
  @override
  _SignUpFullState createState() => _SignUpFullState();
}

class _SignUpFullState extends State<SignUpFull> {
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
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: RotatedBox(
                    quarterTurns: -1,
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontWeight: FontWeight.w900,
                      ),
                    )),
              ),
              FadeAnimation(
                  delay: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0, left: 10.0),
                    child: Container(
                      width: width * 0.5,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 60,
                          ),
                          Center(
                              child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: "Let's start something new with",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                              TextSpan(
                                  text: " Apart",
                                  style: TextStyle(
                                      fontSize: 38,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))
                            ]),
                          )),
                        ],
                      ),
                    ),
                  )),
            ]),
            SizedBox(
              height: height * 0.1,
            ),
            FadeAnimation(
              delay: 1.2,
              child: RoundedTextField(
                hintText: "Full Name",
              ),
            ),
            FadeAnimation(
              delay: 1.3,
              child: RoundedTextField(
                hintText: "Email",
              ),
            ),
            FadeAnimation(
              delay: 1.4,
              child: RoundedTextField(
                hintText: "Password",
                suffixIcon: Icon(
                  Icons.visibility_off,
                  color: Colors.black,
                ),
                obscureText: true,
              ),
            ),
            FadeAnimation(
              delay: 1.5,
              child: RoundedTextField(
                hintText: "Confirm Password",
                suffixIcon: Icon(
                  Icons.visibility_off,
                  color: Colors.black,
                ),
                obscureText: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20,top: 30),
              child: Align(
                alignment: Alignment.centerRight,
                child: MaterialButton(
                  padding: EdgeInsets.only(top: 10,bottom: 10,right: 20,left: 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                    Text("Sign up", style: TextStyle(fontSize: 16, color: MyColors.accent),),
                    Icon(Icons.arrow_forward, color: MyColors.accent,),
                  ],),
                  elevation: 8,
                  color: Colors.white,
                  onPressed: (){},
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0))
                ),
              ),
            ),
            FadeAnimation(
              delay: 1.6,
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 30),
                child: Container(
                  alignment: Alignment.topRight,
                  //color: Colors.red,
                  height: 20,
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Have we met before?',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignInPage()));
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
