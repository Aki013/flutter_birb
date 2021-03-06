import 'package:birb/main.dart';
import 'package:birb/no_content.dart';

import 'package:birb/posts_list.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {
   testWidgets('Renders list of posts', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(
      home: PostsList(),
    ));

    expect(find.byType(Card), findsNWidgets(2));
    expect(find.text('Prim Birb'), findsNWidgets(2));
  });
}