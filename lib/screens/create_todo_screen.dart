import 'package:flutter/material.dart';

class CreateTodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Todo'),),
      body: Text('Create New Todo'),
    );
  }
}