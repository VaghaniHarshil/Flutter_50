import 'package:flutter/material.dart';

import 'package:morseify_app/widgets/home_widgets/customdrawer.dart';
import 'package:morseify_app/widgets/home_widgets/Greetings.dart';
import 'package:morseify_app/widgets/home_widgets/options.dart';
import 'package:morseify_app/widgets/home_widgets/recommend.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        drawer: const CustomDrawer(),
        appBar: AppBar(
          backgroundColor: const Color(0xffedf2f4),
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ),
          title: const Text(
            "Morsefiy App",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: ListView(
            children: const [
              Greetings(),
              Options(),
              Recommend(),
            ],
          ),
        ),
      ),
    );
  }
}
