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

class HomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;
  
  void decrement() {
    setState(() {
      contador--;
    });
    print(contador);
  }

  void increment() {
    setState(() {
      contador++;
    });
    print(contador);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/image.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pode Entrar!',
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(padding: EdgeInsets.all(40),
              child: Text(
                contador.toString(),
                style: TextStyle(
                  fontSize: 100,
                  color: Colors.black,
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
      ), 
    );
  }
}

// class HomePage extends StatelessWidget {
//   HomePage({super.key});
//   int contador = 0;
//   void decrement() {
//     contador--;
//     print(contador);
//   }

//   void increment() {
//     contador++;
//     print(contador);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('assets/images/image.jpg'),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Pode Entrar!',
//               style: TextStyle(
//                 fontSize: 26,
//                 color: Color.fromARGB(255, 4, 87, 154),
//                 fontWeight: FontWeight.w700,
//               ),
//             ),
//             Padding(padding: EdgeInsets.all(40),
//               child: Text(
//                 contador.toString(),
//                 style: TextStyle(
//                   fontSize: 100,
//                   color: Color.fromARGB(255, 4, 87, 154),
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//             ),
            
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TextButton(
//                   onPressed: decrement,
//                   style: TextButton.styleFrom(
//                     backgroundColor: Colors.blue,
//                     fixedSize: const Size(100, 100),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(24),
//                     ),
//                   ),
//                   child: Text(
//                     'Sair',
//                     style: TextStyle(color: Colors.black, fontSize: 16),
//                   ),
//                 ),
//                 SizedBox(width: 32),
              
//                 TextButton(
//                   onPressed: increment,
//                   style: TextButton.styleFrom(
//                     backgroundColor: Colors.blue,
//                     fixedSize: const Size(100, 100),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(24),
//                     ),
//                   ),
//                   child: Text(
//                     'Entrar',
//                     style: TextStyle(color: Colors.black, fontSize: 16),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ), 
//     );
//   }
// }
