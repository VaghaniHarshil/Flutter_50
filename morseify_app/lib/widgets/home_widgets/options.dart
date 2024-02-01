import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  const Options({super.key});

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/Encode");
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 10.0),
                    height: 220.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0XFF1A51B8),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 10.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.token,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          Text(
                            "Encode",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20.0),
                          ),
                          Text(
                            "Convert Text into Morse Code",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/Decode");
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 10.0),
                    height: 220.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFFABBA1B),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 10.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.notes,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          Text(
                            "Decode",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20.0),
                          ),
                          Text(
                            "Convert Morse Code into Text",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/Learn");
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 10.0),
                    height: 220.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFFDE8E33),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 10.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.school,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          Text(
                            "Learn",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20.0),
                          ),
                          Text(
                            "Learn morse code from scratch to advance",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 10.0),
                    height: 220.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF63676C),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 10.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.precision_manufacturing_rounded,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          Text(
                            "Quiz",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20.0),
                          ),
                          Text(
                            "Practice your morse skills",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
