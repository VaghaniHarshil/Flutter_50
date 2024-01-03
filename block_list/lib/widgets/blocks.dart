import 'package:flutter/material.dart';

class Imagedata {
  String src;
  String author;

  Imagedata(this.src, this.author);
}

class Picturecards extends StatefulWidget {
  const Picturecards({super.key});

  @override
  State<Picturecards> createState() => _PicturecardsState();
}

class _PicturecardsState extends State<Picturecards> {
  List<Imagedata> images = [
    Imagedata(
        'https://images.pexels.com/photos/166277/pexels-photo-166277.jpeg?auto=compress&cs=tinysrgb&w=600',
        'Joe Dean'),
    Imagedata(
        'https://images.pexels.com/photos/164455/pexels-photo-164455.jpeg?auto=compress&cs=tinysrgb&w=600',
        'jolly dean'),
    Imagedata(
        'https://images.pexels.com/photos/20967/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600',
        'jonny dean'),
    Imagedata(
        'https://images.pexels.com/photos/159862/art-school-of-athens-raphael-italian-painter-fresco-159862.jpeg?auto=compress&cs=tinysrgb&w=600',
        'jon dean'),
    Imagedata(
        'https://images.pexels.com/photos/672630/pexels-photo-672630.jpeg?auto=compress&cs=tinysrgb&w=600',
        'dan dean'),
    Imagedata(
        'https://images.pexels.com/photos/566641/pexels-photo-566641.jpeg?auto=compress&cs=tinysrgb&w=600',
        'jhonny dean')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (var img in images)
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(img.src),
              ),
            ),
            width: double.infinity,
            height: 200.0,
            margin:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 4.0, horizontal: 12.0),
                  decoration: const BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(0),
                      bottom: Radius.circular(15.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Pic by: ${img.author}",
                        style: const TextStyle(
                            color: Colors.white, fontSize: 16.0),
                      ),
                      Row(
                        children: [
                          IconButton(
                            color: Colors.white,
                            iconSize: 20.0,
                            onPressed: () {},
                            icon: const Icon(Icons.add_a_photo),
                          ),
                          IconButton(
                            color: Colors.white,
                            iconSize: 20.0,
                            onPressed: () {},
                            icon: const Icon(Icons.share),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
