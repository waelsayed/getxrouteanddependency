import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getxrouteanddependency/controllers/product_controller.dart';
import 'package:getxrouteanddependency/controllers/user_controller.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  final userController = Get.find<UserController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text("Welcome ${userController.email.value}"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                // Update user info and navigate back
                userController.updateUser('Wael Sayed', 'waelteem@gmail.com');
                Get.back();
              },
              child: Text('Update and Go Back'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  'Success',
                  'Profile updated successfully',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundGradient: const LinearGradient(
                      colors: [Color.fromRGBO(1, 90, 4, 1), Colors.lightGreen]),
                );
              },
              child: Text('Show Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
