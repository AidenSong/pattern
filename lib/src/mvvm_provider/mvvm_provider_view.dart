import 'package:flutter/material.dart';
import 'package:pattern/src/mvvm_provider/mvvm_provider_controller.dart';
import 'package:provider/provider.dart';




class MVVMProviderView extends StatefulWidget {
  const MVVMProviderView({Key? key}) : super(key: key);

  @override
  State<MVVMProviderView> createState() => _MVVMProviderViewState();
}

class _MVVMProviderViewState extends State<MVVMProviderView> {

  MVVMProviderController? controller;


  @override
  Widget build(BuildContext context) {
    controller = Provider.of<MVVMProviderController>(context, listen: false);

    return Scaffold(
      appBar: AppBar(title: const Text("MVVM Provider 패턴")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<MVVMProviderController>(
              builder: (BuildContext context, MVVMProviderController value, Widget? child) {
                return Text(
                  controller!.count.toString(),
                  style: const TextStyle(fontSize: 150),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () => controller!.incrementCounter(),
                    child: const Text("+"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () => controller!.decrementCounter(),
                    child: const Text("-"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
