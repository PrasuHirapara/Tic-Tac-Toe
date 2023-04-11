import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class play1v1 extends StatefulWidget{
  @override
  State<play1v1> createState() => _play1v1State();
}

class _play1v1State extends State<play1v1> {
  int xWon = 0,oWon = 0,total = 0;
  bool flag = false;
  String btnCell1 = "",btnCell2 = "",btnCell3 = "",btnCell4 = "",btnCell5 = "",btnCell6 = "",btnCell7 = "",btnCell8 = "",btnCell9 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(right: 60),
          child: Center(child: Text("Play 1v1",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),)),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,

        child: Center(
          child: Container(
            height: 800,
            width: 800,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 130,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text("X",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                          Text("Total",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                          Text("O",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('$xWon',style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Text("$total",style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                          ),
                          Text("$oWon",style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextButton(
                              onPressed: () {
                                btnCell1 = setChar(btnCell1);
                                xWonState();
                                oWonState();
                                drawState();
                                setState(() { });
                              },
                              child:  Text(btnCell1,style: TextStyle(fontSize: 40,color: Colors.black),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.lightBlueAccent,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  btnCell4 = setChar(btnCell4);
                                  xWonState();
                                  oWonState();
                                  drawState();
                                  setState(() { });
                                  },
                                child: Text(btnCell4,style: TextStyle(fontSize: 40,color: Colors.black)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.lightBlueAccent,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  btnCell7 = setChar(btnCell7);
                                  xWonState();
                                  oWonState();
                                  drawState();
                                  setState(() { });
                                  },
                                child: Text(btnCell7,style: TextStyle(fontSize: 40,color: Colors.black)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextButton(
                              onPressed: () {
                                btnCell2 = setChar(btnCell2);
                                xWonState();
                                oWonState();
                                drawState();
                                setState(() { });
                                },
                              child: Text(btnCell2,style: TextStyle(fontSize: 40,color: Colors.black)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.lightBlueAccent,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  btnCell5 = setChar(btnCell5);
                                  xWonState();
                                  oWonState();
                                  drawState();
                                  setState(() { });
                                  },
                                child: Text(btnCell5,style: TextStyle(fontSize: 40,color: Colors.black)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.lightBlueAccent,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  btnCell8 = setChar(btnCell8);
                                  xWonState();
                                  oWonState();
                                  drawState();
                                  setState(() { });
                                  },
                                child: Text(btnCell8,style: TextStyle(fontSize: 40,color: Colors.black)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextButton(
                              onPressed: () {
                                  btnCell3 = setChar(btnCell3);
                                  xWonState();
                                  oWonState();
                                  drawState();
                                  setState(() { });
                                },
                              child: Text(btnCell3,style: TextStyle(fontSize: 40,color: Colors.black)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.lightBlueAccent,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  btnCell6 = setChar(btnCell6);
                                  xWonState();
                                  oWonState();
                                  setState(() { });
                                  },
                                child: Text(btnCell6,style: TextStyle(fontSize: 40,color: Colors.black)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.lightBlueAccent,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  btnCell9 = setChar(btnCell9);
                                  xWonState();
                                  oWonState();
                                  drawState();
                                  setState(() { });
                                  },
                                child: Text(btnCell9,style: TextStyle(fontSize: 40,color: Colors.black)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void xWonState() {
    if(btnCell1 == "X" && btnCell2 == "X" && btnCell3 == "X"){
      xWon++;
      reset();
      return ;
    }
    if(btnCell4 == "X" && btnCell5 == "X" && btnCell6 == "X"){
      xWon++;
      reset();
      return ;
    }
    if(btnCell7 == "X" && btnCell8 == "X" && btnCell9 == "X"){
      xWon++;
      reset();
      return ;
    }
    if(btnCell1 == "X" && btnCell5 == "X" && btnCell9 == "X"){
      xWon++;
      reset();
      return ;
    }
    if(btnCell3 == "X" && btnCell5 == "X" && btnCell7 == "X"){
      xWon++;
      reset();
      return ;
    }
    if(btnCell1 == "X" && btnCell4 == "X" && btnCell7 == "X"){
      xWon++;
      reset();
      return ;
    }
    if(btnCell2 == "X" && btnCell5 == "X" && btnCell8 == "X"){
      xWon++;
      reset();
      return ;
    }
    if(btnCell3 == "X" && btnCell6 == "X" && btnCell9 == "X"){
      xWon++;
      reset();
      return ;
    }
  }

  void oWonState() {
    if(btnCell1 == "O" && btnCell2 == "O" && btnCell3 == "O"){
      oWon++;
      reset();
      return ;
    }
    if(btnCell4 == "O" && btnCell5 == "O" && btnCell6 == "O"){
      oWon++;
      reset();
      return ;
    }
    if(btnCell7 == "O" && btnCell8 == "O" && btnCell9 == "O"){
      oWon++;
      reset();
      return ;
    }
    if(btnCell1 == "O" && btnCell5 == "O" && btnCell9 == "O"){
      oWon++;
      reset();
      return ;
    }
    if(btnCell3 == "O" && btnCell5 == "O" && btnCell7 == "O"){
      oWon++;
      reset();
      return ;
    }
    if(btnCell1 == "O" && btnCell4 == "O" && btnCell7 == "O"){
      oWon++;
      reset();
      return ;
    }
    if(btnCell2 == "O" && btnCell5 == "O" && btnCell8 == "O"){
      oWon++;
      reset();
      return ;
    }
    if(btnCell3 == "O" && btnCell6 == "O" && btnCell9 == "O"){
      oWon++;
      reset();
      return ;
    }
  }

  void drawState() {
    if(btnCell1 == "X" || btnCell1 == "O"){
      if(btnCell2 == "X" || btnCell2 == "O"){
        if(btnCell3 == "X" || btnCell3 == "O"){
          if(btnCell4 == "X" || btnCell4 == "O"){
            if(btnCell5 == "X" || btnCell5 == "O"){
              if(btnCell6 == "X" || btnCell6 == "O"){
                if(btnCell7 == "X" || btnCell7 == "O"){
                  if(btnCell8 == "X" || btnCell8 == "O"){
                    if(btnCell9 == "X" || btnCell9 == "O"){
                      total++;
                      reset();
                      return ;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  String setChar(String btnCell) {
    if(btnCell == "X"){
      return "X";
    }
    if(btnCell == "O"){
      return "O";
    }
    flag = !flag;
    return flag ? "X":"O";
  }

  void reset(){
    btnCell1 = "";
    btnCell2 = "";
    btnCell3 = "";
    btnCell4 = "";
    btnCell5 = "";
    btnCell6 = "";
    btnCell7 = "";
    btnCell8 = "";
    btnCell9 = "";
    flag = false;
  }
}