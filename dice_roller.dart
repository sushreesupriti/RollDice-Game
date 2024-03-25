
import 'dart:math';
import 'package:flutter/material.dart';
final randomizer = Random();
// import 'package:flutter/widgets.dart';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {

    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  
  var currentDiceRoll = 2;
  var activeDiceImage = 'assets/images/dice-1.png';

  //var activeDiceImage =
  void rollDice(){
    
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      
    });
    
  }

  @override
  Widget build(context) {
    return Column(
              mainAxisSize: MainAxisSize.min,
              children:[Image.asset(
                  'assets/images/dice-$currentDiceRoll.png',
                  width: 180,),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: rollDice ,
                    style: TextButton.styleFrom(
                     // padding: EdgeInsets.only(
                      //  top: 20,
                       // ),
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(
                        fontSize: 28)),
                    child: const Text('Roll Dice'),
                    )
                  ],
                
        );
  }

}