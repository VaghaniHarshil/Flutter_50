import "package:flutter/material.dart";
import 'package:diffrent_screens/screens/home.dart';
import 'package:diffrent_screens/screens/settings.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/": (context) => const Homescreen(),
        "/settings": (context) => const Settings(),
      },
    ),
  );
}
