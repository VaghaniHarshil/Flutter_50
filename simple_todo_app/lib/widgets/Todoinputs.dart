import 'package:flutter/material.dart';

class Todoinputs extends StatefulWidget {
  final void Function(String) callback;
  const Todoinputs({
    key,
    required this.callback,
  }) : super(key: key);

  @override
  State<Todoinputs> createState() => _TodoinputsState();
}

class _TodoinputsState extends State<Todoinputs> {
  late TextEditingController _todoInputController;
  @override
  void initState() {
    super.initState();
    _todoInputController = TextEditingController();
  }

  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: TextField(
            controller: _todoInputController,
            decoration: const InputDecoration(
              label: Text("Enter Todo.."),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: IconButton(
            onPressed: () {
              if (_todoInputController.text.isNotEmpty) {
                widget.callback(_todoInputController.text);
                _todoInputController.clear();
                } else {
                  print('Please enter a valid todo');
                  }
            },
            icon: const Icon(Icons.add),
          ),
        )
      ],
    );
  }
}
