import 'dart:ui';

import 'package:flutter/material.dart';

//main関数は全てのflutterアプリの出発点です。
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 209, 209, 209),

        appBar: AppBar(
          title: Text("I AM Rich"),
          backgroundColor: Colors.grey,
        ),
      
         body: Center(
          child: Image(
            image: AssetImage('images/TEST.png'),
          ),
        ),
        
      ),
    ),
  );
}
