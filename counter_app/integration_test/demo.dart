import 'package:counter_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  testWidgets('tap on the floating action button, verify counter',
      (tester) async {
    await tester.pumpWidget(const MyApp());
    final fab = find.byKey(const ValueKey('increment'));

    FinderResult<Element> elements = fab.evaluate();
    print('[flutter] ${elements.first.hashCode}');

    FinderResult<Element> elementsNew = fab.evaluate();
    print('[flutter] ${elementsNew.first.hashCode}');
  }, timeout: const Timeout(Duration(seconds: 600)));
}
