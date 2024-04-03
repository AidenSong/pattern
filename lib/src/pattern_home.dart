import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pattern/src/mvc/view/mvc_view.dart';
import 'package:pattern/src/mvvm/view/mvvm_view.dart';
import 'package:pattern/src/mvvm_getx/mvvm_getx_controller.dart';
import 'package:pattern/src/mvvm_getx/mvvm_getx_view.dart';
import 'package:pattern/src/mvvm_provider/mvvm_provider_controller.dart';
import 'package:pattern/src/mvvm_provider/mvvm_provider_view.dart';
import 'package:pattern/src/normal/normal_view.dart';
import 'package:provider/provider.dart';







class PatternHome extends StatelessWidget {
  const PatternHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("패턴"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const NormalView())),
            child: const Text("NO pattern"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MVCView())),
            child: const Text("MVC pattern"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MVVMView())),
            child: const Text(
                "MVVM pattern"
            ),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)
              => ChangeNotifierProvider<MVVMProviderController>.value(
                value: MVVMProviderController(),
                child: const MVVMProviderView(),
              ))),
            child: const Text("MVVM Provider Pattern"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(const MVVMGetxView(), binding: BindingsBuilder(() {
                Get.put(MVVMGetxController());
              }));
            },
            child: const Text("MVVM Getx Pattern"),
          ),
        ],
      ),
    );
  }
}
