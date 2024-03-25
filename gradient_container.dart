import "package:flutter/material.dart";
import "package:roll_dice/dice_roller.dart";

//import "package:roll_dice/style_text.dart";

const startAlignment = Alignment.topRight;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget{
  const GradientContainer (this.color1 ,this.color2 ,{super.key,});

  const GradientContainer.purple({super.key,})
    :color1 = const Color.fromARGB(255, 25, 3, 62),
     color2 = const Color.fromARGB(255, 3, 17, 97);


  final Color color1;
  final Color color2;
  
  @override
  Widget build(context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1, color2],
              begin: startAlignment,
              end: endAlignment
            ),
          ),
          child: const Center(
            child: DiceRoller(),
      ),
    );
  }
   
}