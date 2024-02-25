import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const App(
      isdevlopment: false,
    ),
  );
}
