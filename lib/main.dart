import 'package:flutter/material.dart';

void main(){
    runApp(
      MaterialApp(
          home: Scaffold(
            body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin:Alignment.topCenter,
                
                  colors: <Color>[
                    Color.fromARGB(243, 255, 55, 24),
                    Color.fromARGB(243, 24, 74, 255),
                    Color.fromARGB(243, 255, 24, 182),
                  ]
                )
              ),
              child: const Center(
                child:Text("Hello World",
                style: TextStyle(
                  color: Color.fromARGB(255, 180, 7, 7),
                  fontSize: 35,
                )),
                ),
            ),
              backgroundColor: Color.fromARGB(243, 24, 74, 255)
          )
      ),
    );
}