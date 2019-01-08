import 'package:family_todo/models/todo.dart';
import 'package:family_todo/widgets/todo_tile.dart';
import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;

  const TodoList({Key key, this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Text('Todo List', style: Theme.of(context).textTheme.title),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (BuildContext context, int index) {
              Todo todo = todos[index];
              return TodoTile(
                todo: todo,
              );
            },
          ),
        ),
      ],
    );
  }
}
