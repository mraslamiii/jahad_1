import 'package:class_flutter/presentation/pages/login_page.dart';
import 'package:class_flutter/presentation/pages/survay_pages/base_page.dart';
import 'package:class_flutter/presentation/pages/welcome_page.dart';
import 'package:class_flutter/presentation/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'presentation/pages/counter_page/counter_page.dart';
import 'presentation/pages/home_page.dart';
import 'presentation/pages/main_page.dart';
import 'presentation/pages/radio_javan.dart';

void main() {
  runApp(const MyApp());

  Future.delayed(Duration(seconds: 5)).then((value) => null);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late SharedPreferences prefs;
  // bool _isFirstLaunch = true;

  @override
  void initState() {
    super.initState();
    // initPref().then((value) {
    //   _isFirstLaunch = prefs.getBool('isFirstLaunch') ?? true;
    // });
  }

  // Future initPref() async {
  //   prefs = await SharedPreferences.getInstance();
  // }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: themeData(),
      locale: Locale('fa'),
      // darkTheme: darkThemeData(),
      debugShowCheckedModeBanner: false,

      home: FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.connectionState == ConnectionState.done) {
            bool __isFirstLaunch =
                snapshot.data?.getBool('isFirstLaunch') ?? true;
            if (__isFirstLaunch) {
              return CounterPage();
            } else {
              return CounterPage();
            }
          }
          return Center();

        },
      ),
    );
  }
}
