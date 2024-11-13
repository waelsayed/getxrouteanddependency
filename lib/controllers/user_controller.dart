import 'package:get/get.dart';

class UserController extends GetxController {
  final username = 'John Doe'.obs;
  final email = 'john@example.com'.obs;

  void updateUser(String name, String newEmail) {
    username.value = name;
    email.value = newEmail;
  }
}
