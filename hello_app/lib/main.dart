import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Center(
          child: Text(
            "hello world!",
            style: TextStyle(
              fontSize: 38.0,
              color: Colors.brown,
            ),
          ),
        ),
      ),
    ),
  );
}
