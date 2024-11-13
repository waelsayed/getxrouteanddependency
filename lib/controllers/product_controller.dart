import 'package:get/get.dart';

class ProductController extends GetxController {
  final products = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    products.addAll(['Product 1', 'Product 2', 'Product 3']);
  }

  void addProduct(String product) {
    products.add(product);
  }
}