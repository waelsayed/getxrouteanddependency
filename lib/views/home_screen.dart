import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getxrouteanddependency/controllers/product_controller.dart';
import 'package:getxrouteanddependency/controllers/user_controller.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final ProductController productController = Get.find();
  final UserController userController = Get.find();

  @override
  Widget build(BuildContext context) {
    //final ProductController productController = Get.put(ProductController());

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent.fcai19-3.fna.fbcdn.net/v/t39.30808-6/277583585_10221174437095190_2416538298247247678_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=_8xqF0S9nYEQ7kNvgFvsxtd&_nc_zt=23&_nc_ht=scontent.fcai19-3.fna&_nc_gid=AgrVWRoggbHX4Q1fGrbANLs&oh=00_AYDh1LH6u6MQc9R4XTsxUN9YPo3DyZ7Zps6TX4djXNxLCQ&oe=673A2A60'),
              ),
              accountEmail: Text("waelteem@gmail.com"),
              accountName: Text("Wael Sayed"),
            ),
            ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {
                  Get.toNamed('/home');
                }),
            ListTile(
                leading: const Icon(Icons.help),
                title: const Text("About us"),
                onTap: () => Get.toNamed('/profile')),
            const ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Log out"),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text("Welcome ${userController.username}"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text("Go to Details"),
              onPressed: () => Get.toNamed('/details', arguments: {"id": 1}),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed('/profile'),
              child: Text('Go to Profile'),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed('/details?id=1&title=Product',
                  arguments: {'price': 100}),
              child: Text('Go to Details with Query Parameters'),
            ),
          ],
        ),
      ),
    );
  }
}
