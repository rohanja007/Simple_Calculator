
import 'package:flutter/material.dart';
import 'package:simple_calculator/view/screen1.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void  initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Screen1(),));
    });
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: Text("Simple Calculator",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
      body:Center(
        child: Text("Welcome to Simple Calculator",style:TextStyle(fontSize: 30,fontWeight: FontWeight.w700),textAlign: TextAlign.center,),
      ),
    );
  }
}