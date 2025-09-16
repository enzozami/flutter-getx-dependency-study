import 'dart:developer';

class CreateController {
  final nome = DateTime.now().toIso8601String();

  CreateController() {
    log('Criando instancia de createController');
  }
}
