import 'package:f_uninortemovil_template/ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:integration_test/integration_test.dart';

Future<Widget> createHomeScreen() async {
  WidgetsFlutterBinding.ensureInitialized();

  return GetMaterialApp(home: MyHomePage(title: 'Flutter Template'));
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("Plus one", (WidgetTester tester) async {
    Widget w = await createHomeScreen();
    await tester.pumpWidget(w);

    expect(find.text("0"), findsOneWidget);

    await tester.tap(find.widgetWithIcon(FloatingActionButton, Icons.add));
    await tester.pumpAndSettle(Duration(seconds: 5));

    expect(find.text("0"), findsNothing);

    expect(find.text("1"), findsOneWidget);
  });
}
