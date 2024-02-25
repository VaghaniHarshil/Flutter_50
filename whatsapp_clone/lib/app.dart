import 'package:flutter/material.dart';
import 'package:whatsapp_clone/view/home.dart';


class App extends StatelessWidget {
  const App({super.key, required this.isdevlopment});
  final bool isdevlopment;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: isdevlopment,
      initialRoute: "/",

      routes: {
        "/":(context) => const Homeview(),
      },
    );
  }
}
