import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

// Atalho para criar widget - stl e depois enter
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Pode Entrar!',
          style: TextStyle(
              fontSize: 26,
              color: Color.fromARGB(255, 4, 87, 154),
              fontWeight: FontWeight.w700
            ),
          ),
          Text('0',
          style: TextStyle(
              fontSize: 26,
              color: Color.fromARGB(255, 4, 87, 154),
              fontWeight: FontWeight.w700
            ),
          ),
        ],
      )
    );
  }
}
