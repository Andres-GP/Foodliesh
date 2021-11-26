import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hello_world/authentication/auth_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({ Key? key }) : super(key: key);

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {

  startTimer(){
    Timer(const Duration(seconds: 8), () async {
      Navigator.push(context, MaterialPageRoute(builder: (c)=> const AuthScreen()));
    });
  }

  @override
  void initState() {
    super.initState();

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(""),
              //TODO Replace Container by an image
              Container(
                color: Colors.red,
              ),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  "Sell food online",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 40,
                    //TODO Fix font family
                    fontFamily: "",
                    letterSpacing: 3,
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