import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  @override
  _TasksTileState createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
  bool isChecked = false;

  // void checkboxCallback(bool checkBoxState) {
  //   setState(() {
  //     isChecked = checkBoxState;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'one',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
          checkboxState: isChecked,
          toggleCheckboxState: (bool checkBoxState) {
            setState(() {
              isChecked = checkBoxState;
            });
          }),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckboxState;

  TaskCheckbox({this.checkboxState, this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}
