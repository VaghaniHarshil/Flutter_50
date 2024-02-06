import 'package:flutter/material.dart';

class Learn extends StatefulWidget {
  const Learn({super.key});

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffedf2f4),
        centerTitle: true,
        title: const Text("Learn"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 100.0,
              margin: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                color: Color(0XFF1A51B8),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, "/Learn/MorseDictionary");
                },
                leading: const Icon(
                  Icons.menu_book_sharp,
                  color: Colors.white,
                  size: 44.0,
                ),
                title: const Text(
                  "Morse Dictionary",
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                ),
                subtitle: const Text(
                  "Improve your vocabulary with our bulit-in morse dictionary.",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
            ),
            Container(
              height: 100.0,
              margin: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
              decoration: const BoxDecoration(
                color: Color(0xFF63676C),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, "/Learn/PracticeListening");
                },
                leading: const Icon(
                  Icons.lyrics_outlined,
                  color: Colors.white,
                  size: 44.0,
                ),
                title: const Text(
                  "Practice Listening",
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                ),
                subtitle: const Text(
                  "Improve your morse code listening skill with Morseify.",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
