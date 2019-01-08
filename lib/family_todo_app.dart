import 'package:family_todo/screens/create_todo_screen.dart';
import 'package:family_todo/screens/home_screen.dart';
import 'package:flutter/material.dart';

class FamilyTodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Family Todo',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/create-todo': (context) => CreateTodoScreen(),
      },
    );
  }
}
