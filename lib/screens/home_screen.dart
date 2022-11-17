import 'package:flutter/material.dart';
import 'package:todo_app/screens/tets.dart';
import 'package:todo_app/widgets/todo_item.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _textEditingController = TextEditingController();

  List<String> toDoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => MyStatefulWidget()));
              },
              icon: Icon(Icons.blender_outlined))
        ],
        title: Text('Home Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: _textEditingController,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    toDoList.add(_textEditingController.text);
                  });
                },
                child: Text(" Save")),
            Container(
              height: 500,
              // color: Colors.indigo,
              child: ListView.builder(
                itemCount: toDoList.length,
                itemBuilder: ((context, index) => ToDoItem(
                      todoText: toDoList[index],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
