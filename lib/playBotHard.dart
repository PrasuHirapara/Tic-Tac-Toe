import 'dart:math';
import 'package:flutter/material.dart';

class playBotHard extends StatefulWidget{
  @override
  createState() => _playBotHardState();
}

class _playBotHardState extends State<playBotHard> {
  int xWon = 0,oWon = 0,total = 0;
  String btnCell1 = "",btnCell2 = "",btnCell3 = "",btnCell4 = "",btnCell5 = "",btnCell6 = "",btnCell7 = "",btnCell8 = "",btnCell9 = "";

  bool xWonState() {
    if(btnCell1 == "X" && btnCell2 == "X" && btnCell3 == "X"){
      return true;
    }
    if(btnCell4 == "X" && btnCell5 == "X" && btnCell6 == "X"){
      return true;
    }
    if(btnCell7 == "X" && btnCell8 == "X" && btnCell9 == "X"){
      reset();
      return true;
    }
    if(btnCell1 == "X" && btnCell5 == "X" && btnCell9 == "X"){
      return true;
    }
    if(btnCell3 == "X" && btnCell5 == "X" && btnCell7 == "X"){
      return true;
    }
    if(btnCell1 == "X" && btnCell4 == "X" && btnCell7 == "X"){
      return true;
    }
    if(btnCell2 == "X" && btnCell5 == "X" && btnCell8 == "X"){
      return true;
    }
    if(btnCell3 == "X" && btnCell6 == "X" && btnCell9 == "X"){
      return true;
    }
    return false;
  }

  bool oWonState() {
    if(btnCell1 == "O" && btnCell2 == "O" && btnCell3 == "O"){
      return true;
    }
    if(btnCell4 == "O" && btnCell5 == "O" && btnCell6 == "O"){
      return true;
    }
    if(btnCell7 == "O" && btnCell8 == "O" && btnCell9 == "O"){
      return true;
    }
    if(btnCell1 == "O" && btnCell5 == "O" && btnCell9 == "O"){
      return true;
    }
    if(btnCell3 == "O" && btnCell5 == "O" && btnCell7 == "O"){
      return true;
    }
    if(btnCell1 == "O" && btnCell4 == "O" && btnCell7 == "O"){
      return true;
    }
    if(btnCell2 == "O" && btnCell5 == "O" && btnCell8 == "O"){
      return true;
    }
    if(btnCell3 == "O" && btnCell6 == "O" && btnCell9 == "O"){
      return true;
    }
    return false;
  }

  bool drawState() {
    if(btnCell1 == "X" || btnCell1 == "O"){
      if(btnCell2 == "X" || btnCell2 == "O"){
        if(btnCell3 == "X" || btnCell3 == "O"){
          if(btnCell4 == "X" || btnCell4 == "O"){
            if(btnCell5 == "X" || btnCell5 == "O"){
              if(btnCell6 == "X" || btnCell6 == "O"){
                if(btnCell7 == "X" || btnCell7 == "O"){
                  if(btnCell8 == "X" || btnCell8 == "O"){
                    if(btnCell9 == "X" || btnCell9 == "O"){
                      return true;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    return false;
  }

  void checkCondition(){
    if(xWonState()){
      xWon++;
      reset();
      return;
    }
    if(oWonState()) {
      oWon++;
      reset();
      return;
    }
    if(drawState()){
      total++;
      reset();
      return;
    }
  }

  String setChar(String btnCell) {
    if(btnCell == "X"){
      return "X";
    }
    if(btnCell == "O"){
      return "O";
    }

    return "X";
  }

  void compTurn(){
    var turn = false;

    for(int i=1; i<=9; i++){
      if(turn){
        break;
      }
      switch(i){
        case 1:
          if(btnCell1 == ""){
            btnCell1 = "O";
            if(oWonState()){
              btnCell1 = "O";
              turn = true;
            }else{
              btnCell1 = "";
            }
          }
          break;

        case 2:
          if(btnCell2 == ""){
            btnCell2 = "O";
            if(oWonState()){
              btnCell2 = "O";
              turn = true;
            }else{
              btnCell2 = "";
            }
          }
          break;

        case 3:
          if(btnCell3 == ""){
            btnCell3 = "O";
            if(oWonState()){
              btnCell3 = "O";
              turn = true;
            }else{
              btnCell3 = "";
            }
          }
          break;

        case 4:
          if(btnCell4 == ""){
            btnCell4 = "O";
            if(oWonState()){
              btnCell4 = "O";
              turn = true;
            }else{
              btnCell4 = "";
            }
          }
          break;

        case 5:
          if(btnCell5 == ""){
            btnCell5 = "O";
            if(oWonState()){
              btnCell5 = "O";
              turn = true;
            }else{
              btnCell5 = "";
            }
          }
          break;

        case 6:
          if(btnCell6 == ""){
            btnCell6 = "O";
            if(oWonState()){
              btnCell6 = "O";
              turn = true;
            }else{
              btnCell6 = "";
            }
          }
          break;

        case 7:
          if(btnCell7 == ""){
            btnCell7 = "O";
            if(oWonState()){
              btnCell7 = "O";
              turn = true;
            }else{
              btnCell7 = "";
            }
          }
          break;

        case 8:
          if(btnCell8 == ""){
            btnCell8 = "O";
            if(oWonState()){
              btnCell8 = "O";
              turn = true;
            }else{
              btnCell8 = "";
            }
          }
          break;

        case 9:
          if(btnCell9 == "") {
            btnCell9 = "O";
            if (oWonState()) {
              btnCell9 = "O";
              turn = true;
            } else {
              btnCell9 = "";
            }
          }
          break;
      }
    }

    for(int i=1; i<=9; i++){
      if(turn){
        break;
      }
      switch(i){
        case 1:
          if(btnCell1 == ""){
            btnCell1 = "X";
            if(xWonState()){
              btnCell1 = "O";
              turn = true;
            }else{
              btnCell1 = "";
            }
          }
          break;

        case 2:
          if(btnCell2 == ""){
            btnCell2 = "X";
            if(xWonState()){
              btnCell2 = "O";
              turn = true;
            }else{
              btnCell2 = "";
            }
          }
          break;

        case 3:
          if(btnCell3 == ""){
            btnCell3 = "X";
            if(xWonState()){
              btnCell3 = "O";
              turn = true;
            }else{
              btnCell3 = "";
            }
          }
          break;

        case 4:
          if(btnCell4 == ""){
            btnCell4 = "X";
            if(xWonState()){
              btnCell4 = "O";
              turn = true;
            }else{
              btnCell4 = "";
            }
          }
          break;

        case 5:
          if(btnCell5 == ""){
            btnCell5 = "X";
            if(xWonState()){
              btnCell5 = "O";
              turn = true;
            }else{
              btnCell5 = "";
            }
          }
          break;

        case 6:
          if(btnCell6 == ""){
            btnCell6 = "X";
            if(xWonState()){
              btnCell6 = "O";
              turn = true;
            }else{
              btnCell6 = "";
            }
          }
          break;

        case 7:
          if(btnCell7 == ""){
            btnCell7 = "X";
            if(xWonState()){
              btnCell7 = "O";
              turn = true;
            }else{
              btnCell7 = "";
            }
          }
          break;

        case 8:
          if(btnCell8 == ""){
            btnCell8 = "X";
            if(xWonState()){
              btnCell8 = "O";
              turn = true;
            }else{
              btnCell8 = "";
            }
          }
          break;

        case 9:
          if(btnCell9 == "") {
            btnCell9 = "X";
            if (xWonState()) {
              btnCell9 = "O";
              turn = true;
            } else {
              btnCell9 = "";
          }
            break;
        }
      }
    }

    if(!turn) {
      while (!turn) {
        for (int i = 1; i <= 9; i++) {
          if (!turn) {
            Random random = Random();
            var randomNum = random.nextInt(9) + 1;
            switch (randomNum) {
              case 1 :
                if (btnCell1 == "") {
                  btnCell1 = "O";
                  turn = true;
                }
                break;

              case 2 :
                if (btnCell2 == "") {
                  btnCell2 = "O";
                  turn = true;
                }
                break;

              case 3 :
                if (btnCell3 == "") {
                  btnCell3 = "O";
                  turn = true;
                }
                break;

              case 4 :
                if (btnCell4 == "") {
                  btnCell4 = "O";
                  turn = true;
                }
                break;

              case 5 :
                if (btnCell5 == "") {
                  btnCell5 = "O";
                  turn = true;
                }
                break;

              case 6 :
                if (btnCell6 == "") {
                  btnCell6 = "O";
                  turn = true;
                }
                break;

              case 7 :
                if (btnCell7 == "") {
                  btnCell7 = "O";
                  turn = true;
                }
                break;

              case 8 :
                if (btnCell8 == "") {
                  btnCell8 = "O";
                  turn = true;
                }
                break;

              case 9 :
                if (btnCell9 == "") {
                  btnCell9 = "O";
                  turn = true;
                }
                break;
            }
          }
        }
      }
    }
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(right: 50),
          child: Center(child: Text("Hard Bot",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),)),
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
                                var temp1 = "";
                                btnCell1 = setChar(btnCell1);
                                checkCondition();
                                if(temp1 == ""){
                                  compTurn();
                                  temp1 = btnCell1;
                                  checkCondition();
                                }
                                setState(() { });
                              },
                              child:  Text(btnCell1,style: const TextStyle(fontSize: 40,color: Colors.black),),
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
                                  var temp4 = "";
                                  btnCell4 = setChar(btnCell4);
                                  checkCondition();
                                  if(temp4 == ""){
                                    compTurn();
                                    temp4 = btnCell4;
                                    checkCondition();
                                  }
                                  setState(() { });
                                },
                                child: Text(btnCell4,style: const TextStyle(fontSize: 40,color: Colors.black)),
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
                                  var temp7 = "";
                                  btnCell7 = setChar(btnCell7);
                                  checkCondition();
                                  if(temp7 == ""){
                                    compTurn();
                                    temp7 = btnCell7;
                                    checkCondition();
                                  }
                                  setState(() { });
                                },
                                child: Text(btnCell7,style: const TextStyle(fontSize: 40,color: Colors.black)),
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
                                var temp2 = "";
                                btnCell2 = setChar(btnCell2);
                                checkCondition();
                                if(temp2 == ""){
                                  compTurn();
                                  temp2 = btnCell2;
                                  checkCondition();
                                }
                                setState(() { });
                              },
                              child: Text(btnCell2,style: const TextStyle(fontSize: 40,color: Colors.black)),
                            ),
                          ),
                          Padding(
                            padding:  const EdgeInsets.only(top: 20),
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.lightBlueAccent,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: TextButton(
                                child: Text(btnCell5,style:  const TextStyle(fontSize: 40,color: Colors.black)),
                                onPressed: () {
                                  var temp5 = "";
                                  btnCell5 = setChar(btnCell5);
                                  checkCondition();
                                  if(temp5 == ""){
                                    compTurn();
                                    temp5 = btnCell5;
                                    checkCondition();
                                  }
                                  setState(() { });
                                },
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
                                  var temp8 = "";
                                  btnCell8 = setChar(btnCell8);
                                  checkCondition();
                                  if(temp8 == ""){
                                    compTurn();
                                    temp8 = btnCell8;
                                    checkCondition();
                                  }
                                  setState(() { });
                                },
                                child: Text(btnCell8,style: const TextStyle(fontSize: 40,color: Colors.black)),
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
                                var temp3 = "";
                                btnCell3 = setChar(btnCell3);
                                checkCondition();
                                if(temp3 == ""){
                                  compTurn();
                                  temp3 = btnCell3;
                                  checkCondition();
                                }
                                setState(() { });
                              },
                              child: Text(btnCell3,style: const TextStyle(fontSize: 40,color: Colors.black)),
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
                                  var temp6 = "";
                                  btnCell6 = setChar(btnCell6);
                                  checkCondition();
                                  if(temp6 == ""){
                                    compTurn();
                                    temp6 = btnCell6;
                                    checkCondition();
                                  }
                                  setState(() { });
                                },
                                child: Text(btnCell6,style: const TextStyle(fontSize: 40,color: Colors.black)),
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
                                  var temp9 = "";
                                  btnCell9 = setChar(btnCell9);
                                  checkCondition();
                                  if(temp9 == ""){
                                    compTurn();
                                    temp9 = btnCell9;
                                    checkCondition();
                                  }
                                  setState(() { });
                                },
                                child: Text(btnCell9,style: const TextStyle(fontSize: 40,color: Colors.black)),
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
}