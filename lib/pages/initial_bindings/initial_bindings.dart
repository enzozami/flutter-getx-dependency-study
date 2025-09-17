import 'package:get/instance_manager.dart';
import 'package:get_dependencias/pages/initial_bindings/auth_model.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthModel(name: 'Enzo Zamineli', email: 'enzozamineli@gmail.com', curso: 'GetX'),
        permanent: true);
  }
}
