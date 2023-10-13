import 'package:class_flutter/data/models/product_model/product_model.dart';
import 'package:class_flutter/data/repo/product_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPageController extends GetxController
    with StateMixin<ProductModel> {
  ProductRepository productRepository = ProductRepository();

  ProductModel? productModel;

  Future getSingleProduct() async {
    change(null, status: RxStatus.loading());

    try {
      productModel = await productRepository.getSingleProduct("1");

      if (productModel == null) {
        change(productModel, status: RxStatus.empty());
      } else {
        change(productModel, status: RxStatus.success());
      }
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
      Get.snackbar('Error', e.toString(),
          backgroundColor: Colors.red,
          colorText: Colors.white,
          duration: Duration(seconds: 3));
      throw e;
    }
  }

  @override
  void onInit() {
    super.onInit();
    getSingleProduct();
  }
}
