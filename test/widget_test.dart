// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:testing/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    
    await tester.enterText(find.byKey(Key('countKey')), '20');
    await tester.enterText(find.byKey(Key('priceKey')), '300');
    await tester.tap(find.byType(RaisedButton));
    await tester.pump();
    expect(find.text('4200'), findsOneWidget);





  });
}
