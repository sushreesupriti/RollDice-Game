import "package:flutter/material.dart";

import "package:roll_dice/gradient_container.dart";

//Define a function
void main() {
  //Executing (calling) a function
  runApp(
    const MaterialApp(
      home: Scaffold(
       
        body: GradientContainer(
            Color.fromARGB(255, 13, 2, 46),
            Color.fromARGB(255, 70, 7, 195)
        ),
    ),
    ),
  ); 
}

