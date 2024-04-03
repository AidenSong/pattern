import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:pattern/src/model/model.dart';





class MVCController extends ControllerMVC {

  static MVCController? _this;
  final Model model;

  MVCController._(StateMVC? state)
    : model = Model(),
    super(state);

  factory MVCController([StateMVC? state]) => _this ??= MVCController._(state);


  void update() => setState(() { });

  void incrementCounter() {
    model.incrementCounter();
    update();
  }

  void decrementCounter() {
    model.decrementCounter();
    update();
  }
}