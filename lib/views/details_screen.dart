import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getxrouteanddependency/controllers/product_controller.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key});
  final args = Get.arguments as Map<String, dynamic>?;
  final productController = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(result: {'status': 'success'}),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Details Page'),
            Text('Arguments: ${args.toString()}'),
            ElevatedButton(
                onPressed: () => Get.offNamed('/profile'),
                child: Text("Go to Profile (Replace)")),
            ElevatedButton(
              onPressed: () => Get.offAllNamed('/'), // Clear stack and go home
              child: Text('Go Home (Clear All)'),
            ),
          ],
        ),
      ),
    );
  }
}
