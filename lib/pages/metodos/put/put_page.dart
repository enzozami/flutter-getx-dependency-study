import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get_dependencias/pages/metodos/put/put_controller.dart';
import 'package:get_dependencias/pages/metodos/put/put_controller_permanet.dart';
import 'package:get_dependencias/pages/metodos/put/put_controller_tag.dart';

class PutPage extends StatefulWidget {
  const PutPage({super.key});

  @override
  State<PutPage> createState() => _PutPageState();
}

class _PutPageState extends State<PutPage> {
  final controller = Get.put(PutController());
  final controller2 = Get.put(PutControllerPermanet(), permanent: true);
  final controllerTagX = Get.put(PutControllerTag(tag: 'TagX'), tag: 'TagX');
  final controllerTagY = Get.put(PutControllerTag(tag: 'TagY'), tag: 'TagY');
  final controllerTagZ = Get.put(PutControllerTag(tag: 'TagZ'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Put'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Time put: ${controller.timestamp}'),
          Text('Time put: ${controller2.timestamp}'),
          WidgetInterno(),
        ],
      )),
    );
  }
}

class WidgetInterno extends StatelessWidget {
  const WidgetInterno({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(Get.find<PutControllerTag>(tag: 'TagX').tag),
        Text(Get.find<PutControllerTag>(tag: 'TagY').tag),
        Text(Get.find<PutControllerTag>().tag),
      ],
    );
  }
}
