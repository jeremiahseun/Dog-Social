import 'package:dog_social/app/app.locator.dart';
import 'package:dog_social/ui/views/chat_lists/chat_lists_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

Widget createChatListScreen() => const MaterialApp(
      home: ChatList(),
    );

void main() {
  group("Chat List Widget Tests", () {
    setUpAll(() => setupLocator());
    testWidgets('If Chat shows up', (widgetTester) async {
      await widgetTester.pumpWidget(createChatListScreen());
      expect(find.text('Chat'), findsOneWidget);
    });

    testWidgets('ListView in the Chat List', (tester) async {
      await tester.pumpWidget(createChatListScreen());
      expect(find.byType(ListView), findsNWidgets(2));
    });

    testWidgets('Naming shows', (tester) async {
      await tester.pumpWidget(createChatListScreen());
      expect(find.text('Matt Chapman'), findsNWidgets(3));
    });

    testWidgets('Search Bar available', (widgetTester) async {
      final field = find.byType(TextField);
      await widgetTester.pumpWidget(createChatListScreen());
      await widgetTester.enterText(field, 'I am available');
      expect(find.widgetWithText(TextField, 'I am available'), findsOneWidget);
    });
  });
}
