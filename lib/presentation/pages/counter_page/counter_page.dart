import 'package:class_flutter/presentation/pages/counter_page/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var c = Get.put(CounterPageController());

    return Column(
      children: [
        Center(
          child: Obx(() => Text("${c.count}")),
        ),

        FilledButton(onPressed: () => c.increment(), child: Text('add'))
      ],
    );
  }
}
