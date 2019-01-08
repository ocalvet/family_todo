import 'package:family_todo/blocs/bloc_provider.dart';
import 'package:family_todo/blocs/todo_bloc.dart';
import 'package:flutter/material.dart';

class CreateTodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TodoBloc bloc = BlocProvider.of<TodoBloc>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('New Todo'),
        ),
        body: Column(
          children: <Widget>[
            StreamBuilder(
              stream: bloc.todoTitle$,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                return TextField(
                  decoration: InputDecoration(
                    hintText: 'Todo title',
                  ),
                  onChanged: bloc.changeTitle,
                );
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Todo description'),
              onChanged: bloc.changeDescription,
            ),
            RaisedButton(
              child: Text('Submit'),
              onPressed: () {
                print('Saving todo');
                Navigator.pushNamed(context, '/');
              },
            )
          ],
        ));
  }
}
