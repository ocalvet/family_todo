import 'dart:async';

import 'package:family_todo/blocs/bloc_base.dart';

class TodoBloc extends BlocBase {
  // title
  final StreamController<String> _todoTitle$ = StreamController.broadcast();
  Stream<String> get todoTitle$ => _todoTitle$.stream;
  Function(String) get changeTitle => _todoTitle$.sink.add;

  // description
  final StreamController<String> _todoDescription$ = StreamController<String>.broadcast();
  Stream<String> get todoDescription$ => _todoDescription$.stream;
  Function(String) get changeDescription => _todoDescription$.sink.add;

  // completed
  final StreamController<String> _todoCompleted$ = StreamController<String>.broadcast();
  Stream<String> get todoCompleted$ => _todoCompleted$.stream;
  Function(String) get changeCompleted => _todoCompleted$.sink.add;

  TodoBloc() {
    todoTitle$.listen(print);
  }

  dispose() {
    _todoTitle$.close();
    _todoDescription$.close();
    _todoCompleted$.close();
  }

}
