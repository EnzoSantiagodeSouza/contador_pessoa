import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Atalho para criar widget - stl e depois enter
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

int num = 0;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void decrement() {
    print('decrement');
  }

  void increment() {
    num+=1;
    print(num);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Pode Entrar!',
            style: TextStyle(
              fontSize: 26,
              color: Color.fromARGB(255, 4, 87, 154),
              fontWeight: FontWeight.w700,
            ),
          ),
          const Padding(padding: EdgeInsets.all(40),
          child: Text(
            '0',
            style: TextStyle(
              fontSize: 100,
              color: Color.fromARGB(255, 4, 87, 154),
              fontWeight: FontWeight.w700,
            ),
           ),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: decrement,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  fixedSize: const Size(100, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Text(
                  'Sair',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              SizedBox(width: 32),

              TextButton(
                onPressed: increment,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  fixedSize: const Size(100, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Text(
                  'Entrar',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
