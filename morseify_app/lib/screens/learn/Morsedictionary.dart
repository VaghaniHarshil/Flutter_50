import 'package:flutter/material.dart';
import 'package:morseify_app/utilities/morse.dart';

class MorseDictionary extends StatefulWidget {
  const MorseDictionary({super.key});

  @override
  State<MorseDictionary> createState() => _MorseDictionaryState();
}

class _MorseDictionaryState extends State<MorseDictionary> {
  final _searchinput = TextEditingController();

  Map<String, String> displaymorsecodes = {};
  Map<String, String> allmorsecodes = morseCodeMap;

  @override
  void initState() {
    super.initState();
    displaymorsecodes = Map<String, String>.from(allmorsecodes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Morse Dictionary"),
        backgroundColor: const Color(0xffedf2f4),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
              child: TextField(
                controller: _searchinput,
                onChanged: (value) {
                  final query = value.toUpperCase();
                  Map<String, String> filteredmap = {};

                  allmorsecodes.forEach((key, value) {
                    if (key.contains(query)) {
                      filteredmap[key] = value;
                    }
                  });
                  setState(() {
                    displaymorsecodes = filteredmap;
                  });
                },
                maxLength: 1,
                maxLines: 1,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  label: Text("Search By character.."),
                  floatingLabelStyle: TextStyle(color: Colors.black),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  counterText: "",
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: ListView(
                children: [
                  if (displaymorsecodes.isNotEmpty)
                    for (final entry in displaymorsecodes.entries)
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2.0),
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Color(0x8F525252)),
                          ),
                        ),
                        child: ListTile(
                          onTap: () {
                            playmorse(entry.value);
                          },
                          leading: Text(
                            entry.key,
                            style: const TextStyle(fontSize: 30.0),
                          ),
                          title: Text(
                            entry.value,
                            style: const TextStyle(fontSize: 30.0),
                          ),
                          trailing: const Icon(
                            Icons.volume_up_rounded,
                            size: 25.0,
                          ),
                        ),
                      ),
                  if (displaymorsecodes.isEmpty)
                    const Center(
                      child: Text("No match Found"),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
