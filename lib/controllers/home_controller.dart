import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt counter = 0.obs;
  void increment() {
    counter++;
    update();
  }

  void decrement() {
    counter--;
    update();
  }

  @override
  void onInit() {
    print('Init the controller ..');
    super.onInit();
  }

  @override
  void onReady() {
    print("controller on ready event ..");
    super.onReady();
  }
}

