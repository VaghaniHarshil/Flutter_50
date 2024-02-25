import 'package:flutter/material.dart';
import 'package:morseify_app/utilities/morse.dart';

class Practicetext {
  String text;
  bool stop;

  Practicetext({
    required this.text,
    required this.stop,
  });
}

List<Practicetext> practicetext = [
  Practicetext(text: "John is a wise man.", stop: false),
  Practicetext(text: "Jack went to the gym.", stop: false),
  Practicetext(text: "The cat is on the table.", stop: false),
  Practicetext(text: "I love to listen to music.", stop: false),
  Practicetext(text: "She has a lot of friends.", stop: false),
  Practicetext(text: "He will be late for the meeting.", stop: false),
  Practicetext(text: "They are going to the store.", stop: false),
];

class Practicelistening extends StatefulWidget {
  const Practicelistening({super.key});

  @override
  State<Practicelistening> createState() => _PracticelisteningState();
}

class _PracticelisteningState extends State<Practicelistening> {
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
                      if (practicetext[i].stop) {
                        print("is  stopped");
                        await player.stop();
                      } else {
                        print("is playing");
                        playmorse(texttomorse(practicetext[i].text));
                      }
                    },
                    icon: const Icon(Icons.play_arrow),
                  ),
                  title: Text(
                    practicetext[i].text,
                    style: const TextStyle(fontSize: 20.0),
                  ),
                  subtitle: Text(
                    texttomorse(practicetext[i].text),
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
