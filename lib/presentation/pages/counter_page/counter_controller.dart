import 'package:class_flutter/data/models/product_model/product_model.dart';
import 'package:class_flutter/data/repo/product_repo.dart';
import 'package:get/get.dart';

class CounterPageController extends GetxController {
  ProductRepository productRepository = ProductRepository();

  Rxn<ProductModel>? productModel;

  Future getSingleProduct() async {
    productModel?.value = await productRepository.getSingleProduct("120");
  }

  @override
  void onInit() {
    super.onInit();
    getSingleProduct();
  }
}
