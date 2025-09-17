import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get_dependencias/pages/service/storage_service.dart';

class StoragePage extends StatelessWidget {
  const StoragePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Text(Get.find<StorageService>().getValue('service')),
      ),
    );
  }
}
