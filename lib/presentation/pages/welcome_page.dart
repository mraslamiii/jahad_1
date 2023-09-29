import 'package:class_flutter/presentation/pages/login_page.dart';
import 'package:class_flutter/presentation/styles/sizes.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  double boxSize = 150;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Scaffold(
      body: Stack(children: [
        Positioned(
            right: Dimens.xLargeSize,
            top: 0,
            left: 0,
            child: Image.asset('assets/welcome_img.png')),
        Positioned(
            right: Dimens.largeSize,
            bottom: boxSize + Dimens.largeSize,
            child: SizedBox(
                height: size.height / 3,
                child: Image.asset('assets/welcome_text_img.png'))),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimens.xxLargeSize + Dimens.standardSize,
                      vertical: Dimens.largeSize),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(24)),
                    color: theme.colorScheme.primary,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: Dimens.standardSize),
                        child: Text("Mandi\nSamaj",
                            style: theme.textTheme.headlineLarge),
                      ),
                      Text("Easy sopping in\nyour\nconnections",
                          style: theme.textTheme.displaySmall),
                    ],
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      // final SharedPreferences prefs =
                      //     await SharedPreferences.getInstance();

                      // if (prefs != null) {
                      //   prefs.setBool('isFirstLaunch', false);
                      //
                      // }

                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ));
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 800),
                      height: boxSize,
                      padding: EdgeInsets.symmetric(
                          vertical: Dimens.mediumSize,
                          horizontal: Dimens.mediumSize),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primaryContainer,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: Dimens.standardSize),
                            child:
                                Text("Get", style: theme.textTheme.titleMedium),
                          ),
                          Text("Started", style: theme.textTheme.titleMedium),
                          Padding(
                              padding: EdgeInsets.only(top: Dimens.largeSize),
                              child: Icon(Icons.arrow_forward_rounded))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ]),
    );
  }
}
