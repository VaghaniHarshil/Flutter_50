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
            child: Text("Recent Updates"),
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
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (int i = 0; i < 10; ++i)
                  Container(
                    width: 150.0,
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color.fromARGB(255, 198, 203, 205),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const CircleAvatar(
                          radius: 30,
                        ),
                        const Text("WhatsApp"),
                        TextButton(
                          style: TextButton.styleFrom(
                            fixedSize: const Size.fromWidth(100),
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
            alignment: Alignment.centerLeft,
            child:
                TextButton(onPressed: () {}, child: const Text("Explore More")),
          )
        ],
      ),
    );
  }
}
