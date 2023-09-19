import 'package:class_flutter/presentation/styles/sizes.dart';
import 'package:flutter/material.dart';

class RecommndPage extends StatefulWidget {
  const RecommndPage({super.key});

  @override
  State<RecommndPage> createState() => _RecommndPageState();
}

class _RecommndPageState extends State<RecommndPage> {
 int active = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.xLargeSize),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Container(
            child: Text(
              "What are\nyour interests?",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 54),
            child: Center(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: SizedBox(
                    width: double.infinity,
                    child: Ink(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                          color: active == 1 ? Colors.red : Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all()),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            active = 1;
                          });
                        },
                        child: Center(child: Text("Yes")),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Ink(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                        color: active == 2 ? Colors.green : Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all()),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          active = 2;
                        });
                      },
                      child: Center(child: Text("Yes")),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
