import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pass_code/main.dart';
import 'package:pass_code/widgets/my_text_button.dart';

void main() {
  testWidgets('Should see all buttons', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PassCodeScreen(),
      ),
    );

    var finder = find.byType(MyTextButton, skipOffstage: false);

    expect(finder, findsNWidgets(12));
  });

  testWidgets('Should see text', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PassCodeScreen(),
      ),
    );
    expect(find.text('Please enter PIN code'), findsOneWidget);
  });

  testWidgets('Should see top image', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PassCodeScreen(),
      ),
    );

    expect(find.byKey(const Key('top_icon')), findsOneWidget);
  });

  testWidgets('Should see pin code circles', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PassCodeScreen(),
      ),
    );

    expect(find.byKey(const Key('pin_code_circles')), findsOneWidget);
  });
}
