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
      home: Container(
        color: Colors.black,
        alignment: Alignment.center,
        child: Text("Heloo World!"))
    );
  }
}
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold(body: Center(child: Text('Hello World!'))),
//     );
//   }
// }
