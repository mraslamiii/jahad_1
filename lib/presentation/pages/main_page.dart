import 'package:class_flutter/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  Widget _body() {
    switch (_currentIndex) {
      case 0:
        return const HomePage();

      case 1:
        return SearchPage();

      case 2:
        return Container(
          height: 100,
          width: 100,
          color: Colors.yellow,
        );

      case 3:
        return Container(
          height: 100,
          width: 100,
          color: Colors.black,
        );

      default:
        return const HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Image.asset('assets/ic_logo.png'),
        ),
        title: Text("Home",
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: Colors.black)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_outlined))
        ],
      ),
      body: _body(),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: 'Feed'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shop), label: 'Shop'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Account'),
          ]),
    );
  }
}
