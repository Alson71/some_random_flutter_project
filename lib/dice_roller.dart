import 'package:flutter/material.dart';
import 'dart:math';
class DiceRoller extends StatefulWidget{
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }

}

class _DiceRollerState extends State<DiceRoller>{
      var activeDiceImage = 'assets/images/dice-3.png';
      var currentDiceRoll = 2;
      void rollDice(){  
        setState((){
          currentDiceRoll = Random().nextInt(6) + 1;
          activeDiceImage = 'assets/images/dice-$currentDiceRoll.png'; 
        });
        
        print('Rolling die');
      }
  @override
  Widget build(BuildContext context){
      
      return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
              Image.asset(
                activeDiceImage,
                width: 200,
                ),
              
              TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  foregroundColor: Colors.blue,
                  textStyle: const TextStyle(
                    fontSize: 28,
                    ),
                  ),
                child: Text("Roll the Die"),
              ),
          ],
        );
  }
}