import "package:flutter/material.dart";
import 'package:insta_clone_app/screens/home.dart';
import 'package:insta_clone_app/theme/theme.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.system,

      home: const  Home(),
    ),
  );
}
