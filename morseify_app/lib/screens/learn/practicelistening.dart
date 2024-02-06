import 'package:flutter/material.dart';
import 'package:morseify_app/utilities/morse.dart';

class Practicelistening extends StatefulWidget {
  const Practicelistening({super.key});

  @override
  State<Practicelistening> createState() => _PracticelisteningState();
}

class _PracticelisteningState extends State<Practicelistening> {
  final practicetext = [
    "John is a wise man.",
    "Jack went to the gym.",
    "The cat is on the table.",
    "I love to listen to music.",
    "She has a lot of friends.",
    "He will be late for the meeting.",
    "They are going to the store."
  ];
  bool playstop = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Practice Listening"),
        backgroundColor: const Color(0xffedf2f4),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            for (int i = 0; i < practicetext.length; i++)
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 2.0),
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Color(0x8F525252)),
                  ),
                ),
                child: ListTile(
                  leading: IconButton(
                    onPressed: () async {
                      setState(() {
                        playstop = !playstop;
                      });
                      if (!playstop) {
                        playmorse(texttomorse(practicetext[i]));
                      } else {
                        await player.stop();
                      }
                    },
                    icon: const Icon(Icons.play_arrow),
                  ),
                  title: Text(
                    practicetext[i],
                    style: const TextStyle(fontSize: 20.0),
                  ),
                  subtitle: Text(
                    texttomorse(practicetext[i]),
                    style: const TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
