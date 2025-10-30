import 'package:belajar_getx/controllers/reactive_variable_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactiveVariableScreen extends StatelessWidget {
  const ReactiveVariableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final reactV = Get.put(ReactiveVariableController());
    return Scaffold(
      appBar: AppBar(title: Text("Reactive Variables"), centerTitle: true),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text("${reactV.dataInt}", style: TextStyle(fontSize: 20)),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      reactV.decrementInt();
                    },
                    child: Text("-"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      reactV.incrementInt();
                    },
                    child: Text("+"),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${reactV.dataString}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      reactV.updateDataString();
                    },
                    child: Text("update"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      reactV.resetDataString();
                    },
                    child: Text("reset"),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${reactV.dataDouble}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      reactV.decrementDouble();
                    },
                    child: Text("-"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      reactV.incrementDouble();
                    },
                    child: Text("+"),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () =>
                    Text("${reactV.dataBool}", style: TextStyle(fontSize: 20)),
              ),
              ElevatedButton(
                onPressed: () {
                  reactV.gantiDataBool();
                },
                child: Text("update"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () =>
                    Text("${reactV.dataList}", style: TextStyle(fontSize: 20)),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      reactV.changeDataList();
                    },
                    child: Text("Change"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      reactV.incrementDataList();
                    },
                    child: Text("+"),
                  ),
                ],
              ),
            ],
          ),
          Divider(thickness: 3),
          Row(
            children: [
              Expanded(
                child: Obx(
                  () => ListTile(
                    leading: CircleAvatar(
                      child: Text("${reactV.dataMap["id"]}"),
                    ),
                    title: Text("${reactV.dataMap["name"]}"),
                    subtitle: Text("${reactV.dataMap["age"]} years old"),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => reactV.changeNameMap(),
                child: Text("Change"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
