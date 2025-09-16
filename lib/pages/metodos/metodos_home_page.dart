import 'package:flutter/material.dart';

class MetodosHomePage extends StatelessWidget {
  const MetodosHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Metodos Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/metodos/put'),
              child: Text('Put'),
            ),
          ],
        ),
      ),
    );
  }
}
