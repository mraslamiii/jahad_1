import 'package:class_flutter/presentation/pages/counter_page/counter_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductPageController>(
        init: ProductPageController(),
        builder: (controller) => Scaffold(
            body: controller.obx(
                (state) => SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(controller.productModel?.title ?? "",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(color: Colors.black)),
                          Text(controller.productModel?.price.toString() ?? "",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(color: Colors.black)),
                          Text(controller.productModel?.description ?? "",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(color: Colors.black)),

                          if (state != null && state.images != null)
                            Container(
                              margin: EdgeInsets.all(32),
                              color: Colors.red,
                              child: AspectRatio(
                                  aspectRatio: 1 / 1,
                                  child: Image.network(
                                    state.images!.first,
                                    fit: BoxFit.contain,
                                  )),
                            )
                          // Image.network(controller.productModel?.images?.first ?? '')
                        ],
                      ),
                    ),
                onLoading: const Center(child: CupertinoActivityIndicator()),
                onError: (error) => Center(
                    child: Container(color: Colors.red, child: Text("$error"))),
                onEmpty: const Center(
                  child: Text("Data is null"),
                ))));
  }
}
