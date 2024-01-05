import 'package:flutter/material.dart';

class Todolist extends StatefulWidget {
  final List data;
  final void Function(List) callback;

  const Todolist({
    super.key,
    required this.data,
    required this.callback,
  });

  @override
  State<Todolist> createState() => _TodolistState();
}

class _TodolistState extends State<Todolist> {
  @override
  Widget build(BuildContext context) {
    return (widget.data.isEmpty)
        ? const Center(
            child: Text("No Todos Found!"),
          )
        : ListView(
            children: [
              for (int i = 0; i < widget.data.length; i++)
                Container(
                  color: const Color.fromRGBO(99, 110, 114, 0.328),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 5.0, vertical: 5.0),
                  height: 80.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: () {
                            if (!widget.data[i].iscompleted) {
                              widget.data[i].iscompleted = true;
                            } else {
                              widget.data[i].iscompleted = false;
                            }
                            widget.callback(widget.data);
                          },
                          icon: (widget.data[i].iscompleted as bool)
                              ? const Icon(Icons.check_box)
                              : const Icon(Icons.check_box_outline_blank),
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: Text(
                          widget.data[i].text as String,
                          style: const TextStyle(fontSize: 18.0),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Expanded(
                          child: IconButton(
                            onPressed: () {
                              widget.data.removeAt(i);
                              widget.callback(widget.data);
                            },
                            icon: const Icon(Icons.delete),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
            ],
          );
  }
}
