import 'package:flutter/material.dart';

class Recommend extends StatelessWidget {
  const Recommend({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
      child: Column(
        children: [
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.recommend,
              size: 36.0,
            ),
            title: const Text("Recommend Morsefiy"),
            subtitle: const Text(
                "Recommend morsefiy to a friend and help the communtiy grow."),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.star_purple500_sharp,
              size: 36.0,
            ),
            title: const Text(
              "Enjoying Morseify",
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: const Text(
              "Share your review on app store or play store to show support.",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.person,
              size: 36.0,
            ),
            title: const Text(
              "Developer",
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: const Text(
              "Get in touch with me if you have any project ideas or suggestion.",
              style: TextStyle(fontSize: 16.0),
            ),
          )
        ],
      ),
    );
  }
}
