import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController _textEditingController = TextEditingController();

  List toDoList = [
    // {
    //   'text': "Todo item ko text",
    //   'isDone': false,
    // }
  ];
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      } else {
        return Colors.red;
      }
    }

    Checkbox(
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
      value: true,
    );
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                // color: Colors.indigo,
                child: Column(
                  children: [
                    TextField(
                      controller: _textEditingController,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            toDoList.add({
                              'text': _textEditingController.text,
                              'isDone': false,
                            });
                          });
                        },
                        child: Text(" Save")),
                  ],
                ),
              )),
          Expanded(
            flex: 5,
            child: ListView.separated(
              separatorBuilder: ((context, index) => Divider(
                    color: Colors.black,
                  )),
              itemCount: toDoList.length,
              padding: const EdgeInsets.all(16.0),
              itemBuilder: (context, i) {
                // if (i.isOdd) return const Divider();

                return ListTile(
                  leading: Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: toDoList[i]['isDone'],
                    onChanged: (bool? value) {
                      setState(() {
                        toDoList[i]['isDone'] = value!;
                      });
                    },
                  ),
                  title: Text(
                    toDoList[i]['text'],
                  ),
                  trailing: Icon(Icons.delete, color: Colors.red),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text(
          "ADD ",
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
