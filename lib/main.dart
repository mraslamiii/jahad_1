import 'package:class_flutter/presentation/pages/welcome_page.dart';
import 'package:class_flutter/presentation/styles/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: themeData(),
       // darkTheme: darkThemeData(),
       debugShowCheckedModeBanner: false,

       home: WelcomePage(),
    );
  }
}
