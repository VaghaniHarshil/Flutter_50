import 'package:flutter/material.dart';

import 'package:morseify_app/screens/home.dart';
import 'package:morseify_app/screens/encode.dart';
import 'package:morseify_app/screens/decode.dart';
import 'package:morseify_app/screens/learn/learn.dart';
import 'package:morseify_app/screens/learn/Morsedictionary.dart';
import 'package:morseify_app/screens/learn/practicelistening.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.isdevelopment});
  final bool isdevelopment;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: isdevelopment,
      initialRoute: "/",
      routes: {
        '/': (context) => const Home(),
        "/Encode": (context) => const Encode(),
        "/Decode": (context) => const Decode(),
        "/Learn": (context) => const Learn(),
        "/Learn/MorseDictionary": (context) => const MorseDictionary(),
        "/Learn/PracticeListening": (context) => const Practicelistening(),

      },
    );
  }
}
