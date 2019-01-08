import 'package:family_todo/family_todo_app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(FamilyTodoApp());
    expect(find.text('Home'), findsOneWidget);
  });
}
