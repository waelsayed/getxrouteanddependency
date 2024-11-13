import 'package:get/get.dart';
import 'package:getxrouteanddependency/controllers/user_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.putAsync<UserController>(() async {
      final controller = UserController();
      // Simulate async initialization
      await Future.delayed(const Duration(seconds: 1));
      return controller;
    });
  }
}
