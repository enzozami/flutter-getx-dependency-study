import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/basico');
              },
              child: Text('Básico'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos');
              },
              child: Text('Métodos'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/bindings');
              },
              child: Text('Bindings'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/binding_builder');
              },
              child: Text('Binding Builder'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/binding_builder_put');
              },
              child: Text('Binding Builder Put'),
            ),
          ],
        ),
      ),
    );
  }
}
