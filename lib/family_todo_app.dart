import 'package:family_todo/blocs/bloc_provider.dart';
import 'package:family_todo/blocs/todo_bloc.dart';
import 'package:family_todo/screens/create_todo_screen.dart';
import 'package:family_todo/screens/home_screen.dart';
import 'package:flutter/material.dart';

class FamilyTodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TodoBloc bloc = TodoBloc();
    return BlocProvider<TodoBloc>(
      bloc: bloc,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        title: 'Family Todo',
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/create-todo': (context) => CreateTodoScreen(),
        },
      ),
    );
  }
}
