import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Randomuser extends StatefulWidget {
  const Randomuser({super.key});

  @override
  State<Randomuser> createState() => _RandomuserState();
}

class _RandomuserState extends State<Randomuser> {
  String imageuri =
      "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600";
  String maintext = 'john doe';
  String title = 'Hi My Name is\n';
  String name = 'john doe';
  String email = 'johndoe@gmail.com';
  String dob = '1969-06-22T18:25:39.281Z';
  String phone = '(272) 790-0888';

  int number = 1;
  void switchtab(int val) {
    switch (val) {
      case 1:
        title = 'Hi My Name is\n';
        maintext = name;
        break;
      case 2:
        title = 'My Email is\n';
        maintext = email;
        break;
      case 3:
        title = 'My Date of birth is\n';
        maintext = dob;
        break;
      case 4:
        title = 'My phone number is\n';
        maintext = phone;
        break;
      default:
        title = 'Hi My Name is\n';
        maintext = name;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Center(
            child: CircleAvatar(
              radius: 60.0,
              backgroundImage: NetworkImage(
                imageuri,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: title,
                  style: const TextStyle(fontSize: 20.0),
                ),
                TextSpan(
                  text: maintext,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25.0),
                )
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                iconSize: 40.0,
                color: Colors.grey,
                onPressed: () {
                  setState(() {
                    switchtab(1);
                  });
                },
                icon: const Icon(
                  Icons.person,
                ),
              ),
              IconButton(
                iconSize: 40.0,
                color: Colors.grey,
                onPressed: () {
                  setState(() {
                    switchtab(2);
                  });
                },
                icon: const Icon(Icons.email),
              ),
              IconButton(
                iconSize: 40.0,
                color: Colors.grey,
                onPressed: () {
                  setState(() {
                    switchtab(3);
                  });
                },
                icon: const Icon(Icons.calendar_month),
              ),
              IconButton(
                iconSize: 40.0,
                color: Colors.grey,
                onPressed: () {
                  setState(() {
                    switchtab(4);
                  });
                },
                icon: const Icon(Icons.phone),
              ),
            ],
          ),
        ),
        const Divider(),
        Expanded(
          flex: 4,
          child: Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blue),
              ),
              onPressed: () async {
                final response = await http.get(
                  Uri.parse('https://randomuser.me/api/'),
                );
                if (response.statusCode == 200) {
                  var jsonrespones =
                      convert.jsonDecode(response.body) as Map<String, dynamic>;
                  setState(() {
                    imageuri = jsonrespones['results'][0]['picture']['medium'];
                    name = jsonrespones['results'][0]['name']['first'] +
                        ' ' +
                        jsonrespones['results'][0]['name']['last'];
                    email = jsonrespones['results'][0]['email'];
                    dob = jsonrespones['results'][0]['dob']['date'];
                    phone = jsonrespones['results'][0]['phone'];

                    switchtab(1);
                  });
                } else {
                  const Text(
                    "Somting went wrong!!",
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  );
                  const Text(
                    "Please Try later",
                    style: TextStyle(fontSize: 30.0),
                  );
                }
              },
              child: const Text(
                "Generate",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
