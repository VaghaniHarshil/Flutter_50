import "package:flutter/material.dart";
import 'package:simple_todo_app/widgets/Todolist.dart';
import 'package:simple_todo_app/widgets/todoinputs.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          centerTitle: true,
          title: const Text(
            "Todo App",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const SafeArea(
          child: Todoapp(),
        ),
      ),
    ),
  );
}

class Todo {
  String text;
  bool iscompleted;

  Todo(this.text, this.iscompleted);
}

class Todoapp extends StatefulWidget {
  const Todoapp({super.key});

  @override
  State<Todoapp> createState() => _TodoappState();
}

class _TodoappState extends State<Todoapp> {
  List<dynamic> todos = [];
  void todoInput(String todoText) {
    setState(() {
      todos.add(Todo(todoText, false));
    });
  }

  void handleChange(List data) {
    setState(() {
      todos = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 6,
          child: Todolist(
            data: todos,
            callback: handleChange,
          ),
        ),
        Expanded(
          flex: 1,
          child: Todoinputs(
            callback: todoInput,
          ),
        )
      ],
    );
  }
}
