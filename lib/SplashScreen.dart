import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tic_tac_toe/main.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();

    Timer(const Duration(milliseconds: 3500), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(title: "Tic Tac Toe")));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.tealAccent,

          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 55,bottom: 250),
                child: Text("Tic Tac Toe",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
              ),
              Container(
                  child: Lottie.asset('assets/animation/splash_anim.json'),
              ),
            ],
          ),
        ),
    );
  }
}