import 'package:birb/main.dart';
import 'package:birb/no_content.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
   testWidgets('Renders content', (WidgetTester tester) async {
     // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());
    expect(find.text('No Birbs a birbing'), findsOneWidget);
    expect(find.byType(NoContent), findsOneWidget);
  });
}