import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tag_or_chip_selector/tag_or_chip_selector.dart';

void main() {
  testWidgets('TagSelector shows tags', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: TagSelector(
            tags: [

            ],
          ),
        ),
      ),
    );

    expect(find.text('Flutter'), findsOneWidget);
    expect(find.text('Dart'), findsOneWidget);
  });
}
