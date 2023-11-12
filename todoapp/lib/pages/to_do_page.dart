import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  TextEditingController mycontroller = TextEditingController();
  void greetUser() {
    String userName = mycontroller.text;
    setState(() {
      greetingMessage = "Hello, " + userName;
    });
  }

  String greetingMessage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(greetingMessage),
            TextField(
              controller: mycontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: ("Enter the text"),
              ),
            ),
            //button: TextField
            ElevatedButton(
              onPressed: greetUser,
              child: Text("Tap"),
            ),
          ],
        ),
      )),
    );
  }
}
