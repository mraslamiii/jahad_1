import 'package:class_flutter/presentation/styles/sizes.dart';
import 'package:flutter/material.dart';

import 'select_interest_page.dart';

class SurvayBasePage extends StatefulWidget {
  const SurvayBasePage({Key? key}) : super(key: key);

  @override
  State<SurvayBasePage> createState() => _SurvayBasePageState();
}

class _SurvayBasePageState extends State<SurvayBasePage> {
  PageController? pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none)),
        ],
        // automaticallyImplyLeading: false,
        title: SizedBox(
          width: 150,
          height: kToolbarHeight,
          child: Stack(
            children: [
              Positioned(
                  right: 0,
                  bottom: 5,
                  left: 15,
                  top: 10,
                  child: Image.asset('assets/ic_highlight.png')),
              Center(
                child: Text("Survey",
                    style: Theme.of(context).textTheme.titleLarge),
              ),
            ],
          ),
        ),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Dimens.largeSize, vertical: Dimens.standardSize),
        child: ElevatedButton(
            onPressed: () {

              pageController?.nextPage(
                  duration: Duration(milliseconds: 300), curve: Curves.linear);
            },
            child: Text("Next")),
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: [
            InterestPage(),
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.yellow,
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black,
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.green,
            ),
          ]),
    );
  }
}
