import "package:flutter/material.dart";

class Postcontent {
  int id;
  String image;
  String name;
  String location;
  bool issaved;
  bool isliked;

  Postcontent(this.id, this.image, this.name, this.location, this.issaved,
      this.isliked);
}

var posts = <Postcontent>[
  Postcontent(
    0,
    "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600",
    "jane",
    "london",
    true,
    true,
  ),
  Postcontent(
    1,
    "https://images.pexels.com/photos/1036622/pexels-photo-1036622.jpeg?auto=compress&cs=tinysrgb&w=600",
    "chole",
    "spain",
    false,
    false,
  ),
  Postcontent(
    2,
    'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600',
    "laura",
    "egham",
    true,
    false,
  ),
  Postcontent(
    3,
    "https://images.pexels.com/photos/40192/woman-happiness-sunrise-silhouette-40192.jpeg?auto=compress&cs=tinysrgb&w=600",
    "jill",
    "USA",
    false,
    true,
  )
];

class Posts extends StatefulWidget {
  const Posts({super.key});

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListView(
        children: [
          for (var post in posts)
            Postwapper(
              postID: post.id,
            )
        ],
      ),
    );
  }
}

class Postwapper extends StatelessWidget {
  const Postwapper({super.key, required this.postID});
  final int postID;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostHeader(postID: postID),
        Postimg(postID),
        Bottomactions(postID)
      ],
    );
  }
}

//header in post
class PostHeader extends StatelessWidget {
  PostHeader({super.key, required this.postID});
  var postID;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(posts[postID].image),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
            ),
            Column(
              children: [
                Text(
                  posts[postID].name,
                  style: const TextStyle(fontSize: 10.0),
                ),
                Text(
                  posts[postID].location,
                  style: const TextStyle(fontSize: 10.0),
                ),
              ],
            )
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share),
        )
      ],
    );
  }
}

// image in post
class Postimg extends StatefulWidget {
  final int postID;
  const Postimg(
    this.postID, {
    super.key,
  });

  @override
  State<Postimg> createState() => _PostimgState();
}

class _PostimgState extends State<Postimg> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {},
      child: SizedBox(
        child: Image(
          image: NetworkImage(posts[widget.postID].image),
        ),
      ),
    );
  }
}

// like and commits  buttons
class Bottomactions extends StatefulWidget {
  final int postID;
  const Bottomactions(this.postID, {super.key});

  @override
  State<Bottomactions> createState() => _BottomactionsState();
}

class _BottomactionsState extends State<Bottomactions> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  posts[widget.postID].isliked = !posts[widget.postID].isliked;
                });
              },
              icon: Icon(
                Icons.heart_broken,
                color: (posts[widget.postID].isliked)
                    ? const Color(0xFFee5253)
                    : const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            IconButton(
              onPressed: () {
                showBottomSheet(
                  context: context,
                  builder: ((context) {
                    return Container(
                      height: MediaQuery.of(context).size.height,
                      color: Colors.white,
                      child: const Comments(),
                    );
                  }),
                );
              },
              icon: const Icon(Icons.comment_outlined),
            )
          ],
        ),
        IconButton(
          onPressed: () {
            setState(() {
              posts[widget.postID].issaved = !posts[widget.postID].issaved;
            });
          },
          icon: Icon(
            Icons.save_outlined,
            color: (posts[widget.postID].issaved)
                ? const Color.fromARGB(255, 158, 154, 154)
                : const Color.fromARGB(255, 255, 255, 255),
          ),
        )
      ],
    );
  }
}

class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              for (int i = 0; i < 100; i++)
                ListTile(
                  textColor: Colors.black,
                  iconColor: Colors.black,
                  title: const Text("Johe doe"),
                  subtitle: const Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.reply),
                  ),
                ),
            ],
          ),
        ),
        const TextField(
          decoration: InputDecoration(
            labelText: "Comment Here",
            labelStyle: TextStyle(color: Colors.black),
          ),
          style: TextStyle(
            color: Colors.black,
          ),
          cursorColor: Colors.black,
        )
      ],
    );
  }
}
