import 'package:flutter/material.dart';
import 'package:to_do_app/utils/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List of ToDo tasks
  List toDoList = [
    ["Study", false],
    ["Push Something on Github", false],
    ["Post Something on Twitter", false],
  ];

  // Method to make the checkBox functional
  void checkBoxChange(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.cyan[50],
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.cyan[900],
        foregroundColor: Colors.white,
        title: Center(
          child: Text(
            "To Do",
            style: TextStyle(),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index][0],
            taskStatus: toDoList[index][1],
            onChanged: (value) => checkBoxChange(value, index),
          );
        },
      ),
    );
  }
}
