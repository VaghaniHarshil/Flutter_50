import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello,",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                Text(
                  "Harshil Vaghani",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text("Home"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/");
            },
          ),
          ListTile(
            title: const Text("Encode"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/Encode");
            },
          ),
          ListTile(
            title: const Text("Decode"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/Decode");
            },
          ),
          ListTile(
            title: const Text("Settings"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
