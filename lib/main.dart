import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get_dependencias/pages/basico/basico_home_page.dart';
import 'package:get_dependencias/pages/bindings/bindings_controller.dart';
import 'package:get_dependencias/pages/bindings/bindings_example.dart';
import 'package:get_dependencias/pages/bindings/bindings_home_page.dart';
import 'package:get_dependencias/pages/bindings/middleware_binding.dart';
import 'package:get_dependencias/pages/home_page.dart';
import 'package:get_dependencias/pages/initial_bindings/initial_bindings_page.dart';
import 'package:get_dependencias/pages/metodos/create/create_home_page.dart';
import 'package:get_dependencias/pages/metodos/delete_update/delete_page.dart';
import 'package:get_dependencias/pages/metodos/delete_update/update_home_page.dart';
import 'package:get_dependencias/pages/metodos/lazyPut/lazy_put_page.dart';
import 'package:get_dependencias/pages/metodos/metodos_home_page.dart';
import 'package:get_dependencias/pages/metodos/put/put_page.dart';
import 'package:get_dependencias/pages/metodos/putAsync/put_async_page.dart';
import 'package:get_dependencias/pages/service/storage_page.dart';
import 'package:get_dependencias/pages/service/storage_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => StorageService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
        ),
        GetPage(
          name: '/basico',
          page: () => BasicoHomePage(),
        ),
        GetPage(
          name: '/metodos',
          page: () => MetodosHomePage(),
          children: [
            GetPage(
              name: '/put',
              page: () => PutPage(),
            ),
            GetPage(
              name: '/lazyPut',
              page: () => LazyPutPage(),
            ),
            GetPage(
              name: '/putAsync',
              page: () => PutAsyncPage(),
            ),
            GetPage(
              name: '/create',
              page: () => CreateHomePage(),
            ),
            GetPage(
              name: '/update',
              page: () => UpdateHomePage(),
            ),
            GetPage(
              name: '/delete',
              page: () => DeletePage(),
            ),
          ],
        ),
        GetPage(
          name: '/bindings',
          middlewares: [
            MiddlewareBinding(),
          ],
          binding: BindingsExample(),
          page: () => BindingsHomePage(),
        ),
        GetPage(
          name: '/binding_builder',
          binding: BindingsBuilder(
            () {
              Get.put(
                BindingsController(nome: 'Inicializado dentro do Binding'),
              );
            },
          ),
          page: () => BindingsHomePage(),
        ),
        GetPage(
          name: '/binding_builder_put',
          binding: BindingsBuilder.put(
            () => BindingsController(nome: 'Inicializado dentro do Binding'),
          ),
          page: () => BindingsHomePage(),
        ),
        GetPage(
          name: '/initial_binding',
          // binding: InitialBindings(),
          page: () => InitialBindingsPage(),
        ),
        GetPage(
          name: '/get_service',
          // binding: InitialBindings(),
          page: () => StoragePage(),
        ),
      ],
    );
  }
}
