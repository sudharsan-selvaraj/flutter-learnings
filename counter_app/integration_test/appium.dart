import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:counter_app/main.dart';
import 'package:integration_test/integration_test.dart';
import 'package:shelf_router/shelf_router.dart' as shelf;
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import "dart:async";

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  // final TestWidgetsFlutterBinding binding =
  //     TestWidgetsFlutterBinding.ensureInitialized();
  // final WidgetTester tester = WidgetTester._(binding);
  // await tester.pumpWidget(const MyApp());
  // final fab = find.byKey(const ValueKey('increment'));
  // await tester.tap(fab);
  // await tester.tap(fab);
  // await tester.tap(fab);
  // await tester.tap(fab);
  // await tester.tap(fab);
  // await tester.tap(fab);
  // await tester.tap(fab);
  // await tester.tap(fab);

  testWidgets('tap on the floating action button, verify counter',
      (tester) async {
    await tester.pumpWidget(const MyApp());
    final disabledButton =
        find.byKey(const ValueKey('increment_disabled')).at(0);

    final enabledButton = find.byKey(const ValueKey('increment')).at(0);
    final input = find.byKey(const ValueKey('input')).at(0);
    final body = find.byKey(const ValueKey('body')).at(0);

    print(
        "[flutter] disabledButton isEnabled: ${tester.getSemantics(disabledButton).getSemanticsData().hasFlag(SemanticsFlag.isEnabled)}");

    print(
        "[flutter] disabledButton isButton: ${tester.getSemantics(disabledButton).getSemanticsData().hasFlag(SemanticsFlag.isButton)}");

    print(
        "[flutter] enabledButton isEnabled: ${tester.getSemantics(enabledButton).getSemanticsData().hasFlag(SemanticsFlag.isEnabled)}");
    print(
        "[flutter] enabledButton isButton: ${tester.getSemantics(enabledButton).getSemanticsData().hasFlag(SemanticsFlag.isButton)}");

    print(
        "[flutter] input hasEnabledState: ${tester.getSemantics(input).getSemanticsData().hasFlag(SemanticsFlag.hasEnabledState)}");
    print(
        "[flutter] input isEnabled: ${tester.getSemantics(input).getSemanticsData().hasFlag(SemanticsFlag.isEnabled)}");

    print(
        "[flutter] body hasEnabledState: ${tester.getSemantics(body).getSemanticsData().hasFlag(SemanticsFlag.hasEnabledState)}");
    print(
        "[flutter] body isEnabled: ${tester.getSemantics(body).getSemanticsData().hasFlag(SemanticsFlag.isEnabled)}");

    // final fab = find.byKey(const ValueKey('increment')).at(0);

    // await tester.tap(fab);
    // await tester.tap(fab);
    // await tester.tap(fab);
    // var app = shelf.Router();

    // app.get('/hello', (Request request) async {
    //   await tester.tap(fab);
    //   return Response.ok('hello-world');
    // });

    // var server = await io.serve(app, 'localhost', 8080);
    // await Completer<void>().future;
    // // Verify the counter starts at 0.
    // expect(find.text('0'), findsOneWidget);

    // // Finds the floating action button to tap on.
    // final fab = find.byKey(const ValueKey('increment'));

    // // Emulate a tap on the floating action button.
    // await tester.tap(fab);
    // await tester.tap(fab);
    // await tester.tap(fab);
    // await tester.tap(fab);
    // await tester.tap(fab);
    // await tester.tap(fab);
    // await tester.tap(fab);
    // await tester.tap(fab);
    // await tester.tap(fab);
    // await tester.tap(fab);
    // await tester.tap(fab);
    // await tester.tap(fab);
    // await tester.tap(fab);
    // await tester.tap(fab);
    // await tester.tap(fab);
    // await tester.tap(fab);
    // await tester.tap(fab);

    // // Trigger a frame.
    // await tester.pumpAndSettle();

    // // Verify the counter increments by 1.
    // expect(find.text('1'), findsOneWidget);
  }, timeout: const Timeout(Duration(seconds: 600)));
}
