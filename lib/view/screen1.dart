
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  String display = "0";
  double? firstNumber = 0;
  String? operator;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue,
        centerTitle:true,
        title:Text("Simple Calculator",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            SizedBox(width:double.infinity,
             child: Text(display,textAlign: TextAlign.right,style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),)),
            
            Expanded(
              child: Row(
                children:[
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          display +="9";
                        });
                      },
                      child:Text("9",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){
                        setState((){
                          display +="8";
                        });
                      },
                      child:Text("8",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){
                        setState((){
                          display +="7";
                        });
                      },
                      child:Text("7",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                  ),
                   Expanded(
                    child: ElevatedButton(
                      onPressed: (){
                        firstNumber=double.parse(display);
                        setState((){
                          display="0";
                          operator="+";
                        });
                      },
                      child:Text("+",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ],  
                
              ),
            ),
            Expanded(
              child: Row(children:[
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){setState((){
                        display +="6";
                      });},
                      child:Text("6",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){setState((){
                        display+="5";
                      });},
                      child:Text("5",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){setState((){
                        display+="4";
                      });},
                      child:Text("4",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                  ),
                   Expanded(
                    child: ElevatedButton(
                      onPressed: (){
                        firstNumber=double.parse(display);
                        setState((){
                        display="0";
                        operator="-";
                      });},
                      child:Text("-",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ],  ),
            ),
            Expanded(
              child: Row(children:[
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){setState((){
                        display+="3";
                      });},
                      child:Text("3",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){setState((){
                        display+="2";
                      });},
                      child:Text("2",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){setState((){
                        display+="1";
                      });},
                      child:Text("1",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                  ),
                   Expanded(
                    child: ElevatedButton(
                      onPressed: (){
                        firstNumber=double.parse(display);
                        setState((){
                        display="0";
                        operator="x";
                      });},
                      child:Text("x",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ],  ),
            ),
            Expanded(
              child: Row(children:[
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){setState((){
                        display="0";
                        firstNumber=0;
                        operator="";
                      });},
                      child:Text("c",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){setState((){
                        display+="0";
                      });},
                      child:Text("0",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                     onPressed: () {
                        double secondNumber = double.parse(display);

                              if (operator == "+") {
                                double result = firstNumber! + secondNumber;

                                setState(() {
                                  display = result.toString();
                                });
                              }
                              if (operator == "-") {
                                double result = firstNumber! - secondNumber;

                                setState(() {
                                  display = result.toString();
                                });
                              }
                              if (operator == "x") {
                                double result = firstNumber! * secondNumber;

                                setState(() {
                                  display = result.toString();
                                });
                              }
                              if (operator == "/") {
                                double result = firstNumber! / secondNumber;

                                setState(() {
                                  display = result.toString();
                                });
                              }
                            },
                      child:Text("=",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                  ),
                   Expanded(
                    child: ElevatedButton(
                      onPressed: (){
                        firstNumber=double.parse(display);
                        setState((){
                        display="0";
                        operator="/";
                      });},
                      child:Text("/",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ],  ),
            ),
          ],
        ),
      ),
    );
  }
}