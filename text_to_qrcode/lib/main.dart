import "package:flutter/material.dart";
import "package:qr_flutter/qr_flutter.dart";

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(
            child: Text(
              "Text to QR code",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: const QRholder(),
      ),
    ),
  );
}

class QRholder extends StatefulWidget {
  const QRholder({super.key});

  @override
  State<QRholder> createState() => _QRholderState();
}

class _QRholderState extends State<QRholder> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(40.0),
            height: MediaQuery.of(context).size.height / 2,
            child: Center(
              child: (_textEditingController.text == "")
                  ? const Text("No Date provided!!")
                  : QrImageView(
                      data: _textEditingController.text,
                    ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 6,
            child: TextField(
              controller: _textEditingController,
              maxLength: 120,
              cursorColor: Colors.grey,
              decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  )),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 18,
            child: TextButton(
              onPressed: () {
                setState(() {});
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blue),
              ),
              child: const Text(
                "Generate",
                style: TextStyle(color: Colors.white, fontSize: 24.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
