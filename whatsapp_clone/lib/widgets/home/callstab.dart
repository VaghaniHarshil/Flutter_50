import 'package:flutter/material.dart';

class CallsTab extends StatelessWidget {
  const CallsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            onTap: () {},
            leading: const CircleAvatar(
              radius: 25.0,
            ),
            title: const Text("Create call link"),
            subtitle: const Text("Share a link your WhatsApp call"),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Recent",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          for (int i = 0; i < 20; i++)
            ListTile(
              onTap: () {},
              leading: const CircleAvatar(
                radius: 25.0,
              ),
              title: const Text(
                "John Doe",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
              ),
              subtitle: const Row(
                children: [
                  Icon(
                    Icons.call_received,
                    size: 20.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text("Today, "),
                  Text("10.07 am")
                ],
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.call),
                color: const Color(0xff218c74),
              ),
            )
        ],
      ),
    );
  }
}
