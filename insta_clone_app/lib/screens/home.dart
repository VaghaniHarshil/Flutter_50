import 'package:flutter/material.dart';
import 'package:insta_clone_app/widgets/stories.dart';
import 'package:insta_clone_app/widgets/posts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Instagram"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.heart_broken),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.messenger_rounded),
          )
        ],
      ),
      body: const SafeArea(
        child: Column(
          children: [
            Stories(),
            Expanded(
              child: Posts(),
            )
          ],
        ),
      ),
    );
  }
}
