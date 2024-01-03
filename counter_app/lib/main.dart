import "package:flutter/material.dart";

String title = "click on to count";
int count = 0;
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          title: const Text(
            "Counter APP",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const Center(
          child: Counter(),
        ),
      ),
    ),
  );
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 30.0),
        ),
        Text(
          count.toString(),
          style: const TextStyle(fontSize: 30.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              color: Colors.blue,
              iconSize: 30.0,
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              icon: const Icon(Icons.add),
            ),
            IconButton(
              color: Colors.red,
              iconSize: 30.0,
              onPressed: () {
                setState(() {
                  if (count <= 0) {
                    count = 0;
                    return;
                  }
                  count--;
                });
              },
              icon: const Icon(Icons.remove),
            ),
            IconButton(
              color: Colors.green,
              iconSize: 30.0,
              onPressed: () {
                setState(() {
                  count = 0;
                });
              },
              icon: const Icon(Icons.restart_alt_rounded),
            ),
          ],
        ),
      ],
    );
  }
}
