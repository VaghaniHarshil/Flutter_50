import 'package:flutter/material.dart';


import 'package:morseify_app/widgets/decode/decodeform.dart';

class Decode extends StatefulWidget {
  const Decode({super.key});

  @override
  State<Decode> createState() => _DecodeState();
}

class _DecodeState extends State<Decode> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffedf2f4),
          title: const Text(
            "Encode",
          ),
          centerTitle: true,
        ),
        body: const Decodeform(),
      ),
    );
  }
}
