import 'package:get/get.dart';
import 'package:getxrouteanddependency/controllers/product_controller.dart';

class DetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductController());
  }
}
