import 'package:flutter/material.dart';

import 'package:block_list/widgets/blocks.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            centerTitle: true,
            title: const Text(
              'Image Gallery',
              style: TextStyle(color: Colors.white),
            ),
            leading: IconButton(
              onPressed: () {},
              color: Colors.white70,
              icon: const Icon(Icons.menu),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                color: Colors.white70,
                icon: const Icon(Icons.bookmark),
              ),
              IconButton(
                onPressed: () {},
                color: Colors.white70,
                icon: const Icon(Icons.share),
              ),
            ],
          ),
          body: const SafeArea(
            child: Picturecards(),
          ),
        ),
      ),
    ),
  );
}
