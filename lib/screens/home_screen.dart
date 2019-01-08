import 'package:family_todo/models/todo.dart';
import 'package:family_todo/widgets/todo_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Todo> todos = [
    Todo(
      title: "Hello",
      description: "some description",
      completed: false,
    ),
    Todo(
      title: "Hello 1",
      description: "some description 1",
      completed: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: TodoList(todos: todos),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/create-todo');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
