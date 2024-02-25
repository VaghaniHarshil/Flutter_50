import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utilities/chatinfo.dart';

List<Chatinfo> chat = chatList;

class ChatsDisplayTab extends StatelessWidget {
  const ChatsDisplayTab({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (int i = 0; i < chat.length; i++)
          InkWell(
            onTap: () {
              print("works");
            },
            child: ListTile(
              leading: GestureDetector(
                onTap: () {
                  showAdaptiveDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: const RoundedRectangleBorder(),
                        child: SizedBox(
                          height: 300,
                          width: 100,
                          child: Column(
                            children: [
                              Expanded(
                                child: Image.network(chat[i].image,
                                    fit: BoxFit.cover),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.chat,
                                        color: Color(0xff10ac84),
                                        size: 26.0,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.call,
                                        color: Color(0xff10ac84),
                                        size: 26.0,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.videocam_rounded,
                                        color: Color(0xff10ac84),
                                        size: 26.0,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.info_outline,
                                        color: Color(0xff10ac84),
                                        size: 26.0,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage(chat[i].image),
                ),
              ),
              title: Text(chat[i].name),
              subtitle: Text(chat[i].lastchat),
              trailing: Text(chat[i].time),
            ),
          ),
      ],
    );
  }
}
