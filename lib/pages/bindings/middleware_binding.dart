import 'dart:developer';

import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_navigation/get_navigation.dart';

class MiddlewareBinding extends GetMiddleware {
  // executado logo antes da chamada da pagina
  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    log('onBindginsStart $onBindingsStart');
    return super.onBindingsStart(bindings);
  }

  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    log('onBindginsStart $onPageBuildStart');
    return super.onPageBuildStart(page);
  }
}
