import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pattern/src/mvvm_getx/mvvm_getx_controller.dart';




class MVVMGetxView extends GetView<MVVMGetxController> {
  const MVVMGetxView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(title: const Text("MVC 패턴")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                controller.count.toString(),
                style: const TextStyle(fontSize: 150),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () => controller.incrementCounter(),
                    child: const Text("+"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () => controller.decrementCounter(),
                    child: const Text("-"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
