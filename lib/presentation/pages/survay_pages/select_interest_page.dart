import 'dart:math';

import 'package:class_flutter/presentation/styles/sizes.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class InterestPage extends StatefulWidget {
  const InterestPage({Key? key}) : super(key: key);

  @override
  State<InterestPage> createState() => _InterestPageState();
}

class _InterestPageState extends State<InterestPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.xLargeSize),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What are\nyour interests?",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: Dimens.standardSize),
            child: Wrap(
              children: [
                interestWidget("Relax"),
                interestWidget("Relax asdd"),
                interestWidget("Relax"),
                interestWidget("Relsdaax"),
                interestWidget("Redasdalax"),
                interestWidget("Reladsdasax"),
                interestWidget("Relax"),
              ],
            ),
          ),
          interestWidget("Relax")
        ],
      ),
    );
  }

  List colors = [
    const Color(0xff46A3F9),
    const Color(0xffFACF35),
    const Color(0xffFF4C77),
    const Color(0xffc9c9c9),
  ];

  Random random = Random();

  Widget interestWidget(String title) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: Dimens.mediumSize, vertical: Dimens.mediumSize),
      padding: EdgeInsets.symmetric(
          horizontal: Dimens.largeSize, vertical: Dimens.standardSize),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
          color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0),
          borderRadius:   BorderRadius.circular(24)),
      child: Text(title,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Colors.black)),
    );
  }



}



class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
