import 'package:flutter/material.dart';

class UpdateTab extends StatelessWidget {
  const UpdateTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: const Text(
                  "Status",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            child: ListTile(
              onTap: () {},
              leading: const CircleAvatar(
                radius: 30,
              ),
              title: const Text("My Status"),
              subtitle: const Text("Tap to add status updates"),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: const Text("Recent Updates"),
          ),
          for (int i = 0; i < 10; ++i)
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5.0),
              child: ListTile(
                onTap: () {},
                leading: const CircleAvatar(
                  radius: 30,
                ),
                title: const Text("My Status"),
                subtitle: const Text("38 minutes ago"),
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: const Text(
                  "viewed updates",
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.keyboard_arrow_down_outlined))
            ],
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xffdfe6e9),
              ),
            ),
          ),
          Container(
            child: ListTile(
              contentPadding: const EdgeInsets.only(right: 0),
              title: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  "Channels",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  "Stay updated on topices that matter to you. Find channels to follow below.",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
              trailing:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (int i = 0; i < 10; ++i)
                  Container(
                    width: 150.0,
                    margin: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color.fromARGB(255, 198, 203, 205),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CircleAvatar(
                          radius: 25.0,
                        ),
                        const Text(
                          "WhatsApp",
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w500),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            fixedSize: const Size.fromWidth(120),
                            backgroundColor:
                                const Color.fromARGB(67, 85, 239, 195),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Follow",
                            style: TextStyle(
                              color: Color(0xff10ac84),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 20, 0, 40),
            alignment: Alignment.centerLeft,
            child: TextButton(
              style: TextButton.styleFrom(
                fixedSize: const Size.fromWidth(120),
                backgroundColor: const Color(0xff218c74),
              ),
              onPressed: () {},
              child: const Text(
                "Explore More",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
