import 'package:belajar_getx/controllers/bindings_builder_controller.dart';
import 'package:belajar_getx/controllers/reactive_variable_controller.dart';
import 'package:get/get.dart';

class BindingsClass extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BindingsBuilderController());
    Get.lazyPut(() => ReactiveVariableController());
  }
}
