import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:morseify_app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    const MyApp(
      isdevelopment: false,
    ),
  );
}
