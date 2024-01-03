import "package:flutter/material.dart";

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Colorchange(),
    ),
  ));
}

class Colorchange extends StatefulWidget {
  const Colorchange({super.key});

  @override
  State<Colorchange> createState() => _ColorchangeState();
}

class _ColorchangeState extends State<Colorchange> {
  Color selected_color = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: selected_color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 20.0),
          ),
          TextButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue),
            ),
            onPressed: () {
              setState(
                () {
                  selected_color = Colors.blue;
                },
              );
            },
            child: const Text(
              "Blue",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 20.0),
          ),
          TextButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.red),
            ),
            onPressed: () {
              setState(() {
                selected_color = Colors.red;
              });
            },
            child: const Text(
              "Red",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 20.0),
          ),
          TextButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.amber),
            ),
            onPressed: () {
              setState(() {
                selected_color = Colors.amber;
              });
            },
            child: const Text(
              "Yellow",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 20.0),
          ),
          TextButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.purple),
            ),
            onPressed: () {
              setState(() {
                selected_color = Colors.purple;
              });
            },
            child: const Text(
              "purple",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 20.0),
          ),
          TextButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.orange),
            ),
            onPressed: () {
              setState(() {
                selected_color = Colors.orange;
              });
            },
            child: const Text(
              "orange",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
