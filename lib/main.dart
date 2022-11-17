import 'package:flutter/material.dart';
import 'package:todo_app/screens/home_screen.dart';
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
      // theme: ThemeData.dark(),
      home: HomeScreen(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     elevation: 0,
      //     backgroundColor: Colors.transparent,
      //     centerTitle: true,
      //     title: const Text(
      //       'My To-do List',
      //       style: TextStyle(color: Color.fromARGB(255, 216, 203, 163)),
      //     ),
      //   ),
      //   body: Column(
      //     children: [

      //       TextField(),
      //       Container(
      //         padding: EdgeInsets.symmetric(horizontal: 15),
      //         child: Column(
      //           children: [
      //             searchBox(),
      //             ToDoItem(),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
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

