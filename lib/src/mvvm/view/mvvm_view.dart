import 'package:flutter/material.dart';
import 'package:pattern/src/model/model.dart';
import 'package:pattern/src/mvvm/viewmodel/mvvm_viewmodel.dart';


class MVVMView extends StatelessWidget {
  MVVMView({Key? key}) : super(key: key);

  MVVMViewModel viewModel = MVVMViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MVVM 패턴"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder(
              stream: viewModel.mvvmStream,
              builder: (BuildContext context, AsyncSnapshot<Model> snapshot) {
                return Text(
                  viewModel.count.toString(),
                  style: const TextStyle(fontSize: 150),
                );
              },
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () => viewModel.incrementCounter(),
                    child: const Text("+"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () => viewModel.decrementCounter(),
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
