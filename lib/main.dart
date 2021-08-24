import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ui/pages/home_page.dart';
import 'ui/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter template',
      theme: MyTheme
          .ligthTheme, // Apply the theme referenced by the theme property on
      // MaterialApp
      darkTheme:
          MyTheme.darkTheme, // Apply the theme referenced by the darkTheme
      // property on MaterialApp
      themeMode:
          ThemeMode.system, // Apply the theme that matches the mode currently
      // in use on the device
      home: MyHomePage(title: 'Flutter Template'),
    );
  }
}
