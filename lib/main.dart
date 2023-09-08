import 'package:class_flutter/presentation/pages/survay_pages/base_page.dart';
import 'package:class_flutter/presentation/pages/welcome_page.dart';
import 'package:class_flutter/presentation/styles/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

  Future.delayed(Duration(seconds: 5)).then((value) => null );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: themeData(),
       // darkTheme: darkThemeData(),
       debugShowCheckedModeBanner: false,

       home: SurvayBasePage(),
    );
  }
}
