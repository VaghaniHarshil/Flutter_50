import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utilities/constants.dart';
import 'package:whatsapp_clone/widgets/home/communitytab.dart';
import 'package:whatsapp_clone/widgets/home/chatdisplaytab.dart';
import 'package:whatsapp_clone/widgets/home/updatetab.dart';
import 'package:whatsapp_clone/widgets/home/callstab.dart';



class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            unselectedLabelStyle: TextStyle(
              color: Color.fromARGB(0, 255, 255, 255),
            ),
            labelPadding: EdgeInsets.all(10.0),
            indicatorColor: Colors.white,
            tabs: [
              Icon(
                Icons.groups,
                color: Color.fromARGB(133, 255, 255, 255),
                size: 32.0,
              ),
              Text(
                'Chats',
                style: TextStyle(color: Colors.white, fontSize: subheading),
              ),
              Text(
                "Updates",
                style: TextStyle(color: Colors.white, fontSize: subheading),
              ),
              Text(
                "Calls",
                style: TextStyle(color: Colors.white, fontSize: subheading),
              ),
            ],
          ),
          backgroundColor: const Color(0xff00b894),
          title: const Text(
            "WhatsApp",
            style: TextStyle(color: Colors.white, fontSize: heading),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
                size: heading,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
                size: heading,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
                size: heading,
              ),
            ),
          ],
        ),
        body: const SafeArea(
          child: TabBarView(
            children: [
              CommunityTab(),
              ChatsDisplayTab(),
              UpdateTab(),
              CallsTab(),
            ],
          ),
        ),
      ),
    );
  }
}
