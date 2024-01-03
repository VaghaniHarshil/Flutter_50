import "package:flutter/material.dart";
import 'package:randomuser_app/widgets/Randomuser.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            "Random User",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const SafeArea(
          child: Randomuser(),
        ),
      ),
    ),
  );
}
