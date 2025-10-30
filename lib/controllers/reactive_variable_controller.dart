import 'package:get/get.dart';

class ReactiveVariableController extends GetxController {
  RxInt dataInt = 0.obs;
  void incrementInt() => dataInt++;
  void decrementInt() => dataInt--;

  RxString dataString = "data".obs;
  void updateDataString() {
    dataString.value = "data (updated)";
  }

  void resetDataString() {
    dataString.value = "data";
  }

  RxDouble dataDouble = 0.0.obs;
  void incrementDouble() => dataDouble.value++;
  void decrementDouble() => dataDouble.value--;

  RxBool dataBool = true.obs;
  void gantiDataBool() {
    // if (dataBool.value == true) {
    //   // awal true -> false
    //   dataBool.value = false;
    // } else {
    //   // false -> true
    //   dataBool.value = true;
    // }

    // if (dataBool.isTrue) {
    //   // awal true -> false
    //   dataBool.value = false;
    // } else {
    //   // false -> true
    //   dataBool.value = true;
    // }

    dataBool.toggle();
  }

  RxList<int> dataList = [1, 2, 3].obs;
  int angkaSelanjutnya = 4;
  void changeDataList() {
    dataList[0] = 99;
  }

  void incrementDataList() {
    dataList.add(angkaSelanjutnya);
    angkaSelanjutnya++;
  }

  RxMap<String, dynamic> dataMap = <String, dynamic>{
    "id": 1,
    "name": "John",
    "age": 35,
  }.obs;
  void changeNameMap() {
    dataMap["name"] = "Christ";
  }
}
