import 'package:flutter/material.dart';
import 'package:todo_app/widgets/todo_item.dart';
// import 'package:flutter/src/material/colors.dart';
// import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            'My To-do List',
            style: TextStyle(color: Color.fromARGB(255, 216, 203, 163)),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              searchBox(),
              ToDoItem(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget searchBox() {
  return Container(
    // padding: EdgeInsets.symmetric(vertical: 10),
    decoration: BoxDecoration(
        color: Colors.black, borderRadius: BorderRadius.circular(20)),
    // ignore: prefer_const_constructors
    child: TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          // prefixIconConstraints: const BoxConstraints(),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.white, height: 2)),
    ),
  );
}

// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({super.key});

//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   bool isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     Color getColor(Set<MaterialState> states) {
//       const Set<MaterialState> interactiveStates = <MaterialState>{
//         MaterialState.pressed,
//         MaterialState.hovered,
//         MaterialState.focused,
//       };
//       if (states.any(interactiveStates.contains)) {
//         return Colors.blue;
//       } else {
//         return Colors.red;
//       }
//     }

//     Checkbox(
//       onChanged: (bool? value) {
//         setState(() {
//           isChecked = value!;
//         });
//       },
//       value: true,
//     );
//     return Scaffold(
//       body: ListView.builder(
//         padding: const EdgeInsets.all(16.0),
//         itemBuilder: (context, i) {
//           if (i.isOdd) return const Divider();

//           return ListTile(
//             leading: Checkbox(
//               checkColor: Colors.white,
//               fillColor: MaterialStateProperty.resolveWith(getColor),
//               value: isChecked,
//               onChanged: (bool? value) {
//                 setState(() {
//                   isChecked = value!;
//                 });
//               },
//             ),
//             title: Text(
//               'Hello',
//             ),
//             trailing: Icon(Icons.delete, color: Colors.red),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton.large(
//         backgroundColor: Colors.white,
//         onPressed: () {
//           Navigator.pop(context);
//         },
//         child: const Text(
//           "ADD ",
//           style: TextStyle(
//             color: Colors.red,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }
