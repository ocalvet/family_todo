import 'package:family_todo/models/todo.dart';
import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final Todo todo;

  const TodoTile({Key key, this.todo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("${todo.title} clicked");
      },
      child: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(todo.title),
                  Text(todo.description),
                ],
              ),
              Expanded(child: Container(),),
              Checkbox(onChanged: (bool value) {
                print('changing todo ${todo.title} to $value');
              }, value: todo.completed,)
            ],
          ),
        ),
      ),
    );
  }
}
