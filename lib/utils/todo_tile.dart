import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskStatus;
  Function(bool?)? onChanged;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskStatus,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0, bottom: 0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.cyan[50],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          children: [
            // checkboxes
            // Icon(Icons.check_box_outline_blank_rounded),
            Checkbox(
              value: taskStatus,
              onChanged: onChanged,
              activeColor: Colors.black,
            ),

            // task names
            Text(
              taskName,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                decoration: taskStatus
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                fontWeight: taskStatus ? FontWeight.normal : FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
