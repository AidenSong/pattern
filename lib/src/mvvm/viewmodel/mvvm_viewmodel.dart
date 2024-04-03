


import 'dart:async';

import 'package:pattern/src/model/model.dart';

class MVVMViewModel {
  late Model _model;
  StreamController<Model> controller = StreamController();
  Stream<Model> get mvvmStream => controller.stream;

  MVVMViewModel() {
    _model = Model();
  }

  int get count => _model.counter;

  void update() {
    controller.sink.add(_model);
  }

  void incrementCounter() {
    _model.incrementCounter();
    update();
  }

  void decrementCounter() {
    _model.decrementCounter();
    update();
  }
}