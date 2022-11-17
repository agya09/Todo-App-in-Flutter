// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        onTap: () {
          print('Clicked on Todo item');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Color.fromARGB(137, 124, 124, 124),
        leading: Icon(
          Icons.check_box,
          color: Colors.red,
        ),
        title: Text(
          'Go for morning walk',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        trailing: Container(
          child: IconButton(
            icon: Icon(Icons.delete),
            color: Colors.red,
            onPressed: () {
              print('Clicked on delete');
            },
          ),
        ),
      ),
    );
  }
}
