import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Encodeform extends StatefulWidget {
  const Encodeform({super.key});

  @override
  State<Encodeform> createState() => _EncodeformState();
}

class _EncodeformState extends State<Encodeform> {
  var morseString = "text of morse code ";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: ListView(
          children: [
            Card(
              elevation: 0,
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(4.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 200.0,
                      child: ListView(
                        children: [
                          Text(
                            morseString,
                            style: const TextStyle(fontSize: 24.0),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            if (morseString.isNotEmpty) {
                              // making copy to clip board work
                              Clipboard.setData(
                                  ClipboardData(text: morseString));
                            }
                          },
                          icon: const Icon(
                            Icons.copy,
                            size: 30.0,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.mic,
                            size: 30.0,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.close,
                            size: 30.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const TextField(
                    maxLength: 300,
                    maxLines: 4,
                    decoration: InputDecoration(
                      labelText: "Write something..",
                      floatingLabelStyle: TextStyle(color: Color(0XFF1A51B8)),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0XFF1A51B8),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    height: 50.0,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.change_circle_outlined),
                      label: const Text(
                        "Encode to Morse",
                        style: TextStyle(
                          color: Color(0xFFFCFCFA),
                          fontSize: 16.0,
                        ),
                      ),
                      style: const ButtonStyle(
                        iconColor: MaterialStatePropertyAll(Colors.white),
                        backgroundColor: MaterialStatePropertyAll(
                          Color(0XFF1A51B8),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
