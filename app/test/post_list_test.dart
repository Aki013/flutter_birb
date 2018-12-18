import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:birb/posts_list.dart';
import 'package:birb/post_item.dart';

 void main() {
  testWidgets('Renders list of posts', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(
      home: PostsList(),
    ));

    expect(find.byType(PostItem), findsNWidgets(2));
  });
}