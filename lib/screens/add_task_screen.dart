import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            Text(
              'Add Task',
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 24),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(),
            ),
            SizedBox(
              height: 30,
            ),
            Flexible(
              child: FlatButton(
                onPressed: () {},
                minWidth: double.infinity,
                color: Colors.lightBlueAccent,
                height: 50,
                textColor: Colors.white,
                splashColor: Colors.blueAccent,
                child: Text('Add'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
