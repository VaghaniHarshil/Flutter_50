import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/");
              },
            ),
            ListTile(
              title: const Text("Settings"),
              onTap: () {},
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: const SafeArea(
        child: Options(),
      ),
    );
  }
}

class Options extends StatefulWidget {
  const Options({super.key});

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: const Text("Profile"),
          onTap: () {
            print('Profile tapped');
          },
        ),
        ListTile(
          title: const Text("Username Reset"),
          onTap: () {
            print('Username Reset tapped');
          },
        ),
        ListTile(
          title: const Text("Password Reset"),
          onTap: () {
            print('Password Reset tapped');
          },
        ),
        ListTile(
          title: const Text("About"),
          onTap: () {
            print('About tapped');
          },
        ),
        ListTile(
          title: const Text("Delete Account"),
          onTap: () {
            print('Delete Account tapped');
          },
        ),
      ],
    );
  }
}
