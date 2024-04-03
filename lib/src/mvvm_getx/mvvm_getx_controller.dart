



import 'package:get/get.dart';
import 'package:pattern/src/model/model.dart';

class MVVMGetxController extends GetxController {

  late Model model;
  RxInt count = 0.obs;

  @override
  void onInit() {
    super.onInit();

    model = Model();
  }


  void incrementCounter() {
    model.incrementCounter();
    count(model.counter);
  }

  void decrementCounter(){
    model.decrementCounter();
    count(model.counter);
  }

}