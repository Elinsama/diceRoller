import 'package:firstapp/gradient_container.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
  const MaterialApp(
        home: Scaffold(
        body: GradianContainer(
         Color.fromARGB(255, 230, 66, 66),
         Color.fromARGB(255, 197, 37, 37)
        ),
      ),
    ),
  );

}

