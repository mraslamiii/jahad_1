import 'package:class_flutter/presentation/pages/counter_page/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var c = Get.put(CounterPageController());
//todo error run getx builder
    return Obx(() => Column(
          children: [
            Text(c.productModel?.value?.title ?? "",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Colors.white)),
            Text(c.productModel?.value?.price.toString() ?? "",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Colors.white)),
            Text(c.productModel?.value?.description ?? "",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Colors.white)),
            Image.network(c.productModel?.value?.images?.first ?? '')
          ],
        ));
  }
}
