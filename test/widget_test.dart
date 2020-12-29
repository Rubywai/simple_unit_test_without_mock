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

    //find drop_downs initial
    expect(find.text('100'), findsOneWidget);
    expect(find.text('3'),findsOneWidget);

    //find dropdown button by key
    expect(find.byKey(ValueKey('PriceDropDown')), findsOneWidget);
    expect(find.byKey(ValueKey('CountDropdown')), findsOneWidget);
    
    //tap price dropdown button
    await tester.tap(find.byKey(ValueKey('PriceDropDown')));
    expect(find.text('200'), findsOneWidget);
    //tap item
    await tester.tap(find.byKey(ValueKey(200)));
    //tap value dropdown button
    await tester.tap(find.byKey(ValueKey('CountDropdown')));
    expect(find.text('3'), findsOneWidget);
    await tester.tap(find.byKey(ValueKey(2)));
    // //rebuild widgets
    await tester.pump();

   // expect(find.text('600'), findsOneWidget);
    
    //test result




  });
}
