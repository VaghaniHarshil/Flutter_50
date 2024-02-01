import 'package:flutter/material.dart';

import 'package:morseify_app/widgets/encode/encodeform.dart';

class Encode extends StatefulWidget {
  const Encode({super.key});

  @override
  State<Encode> createState() => _EncodeState();
}

class _EncodeState extends State<Encode> {
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
        body: const Encodeform(),
      ),
    );
  }
}
