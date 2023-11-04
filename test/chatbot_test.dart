import 'package:flutter/material.dart';
import 'package:mini_project_easyware/src/features/chatbot/screen/chatbot_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Judulnya harus Chat Bot', (widgetTester) async {
    await widgetTester.pumpWidget(const MaterialApp(
      home: ChatbotScreen(),
    ));
    expect(find.text('Chat Bot'), findsOneWidget);
  });
}
