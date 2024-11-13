import 'package:get/get.dart';
import 'package:getxrouteanddependency/controllers/product_controller.dart';
import 'package:getxrouteanddependency/controllers/user_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(UserController(), permanent: true);
    Get.lazyPut(()=>ProductController(),fenix: true);
  }
}
