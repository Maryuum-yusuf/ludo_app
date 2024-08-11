import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: test(),
  ));
}

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 211, 112, 145),
//       appBar: AppBar(
//         elevation: 16,
//         centerTitle: true,
//         title: Text('ludo app'),
//         backgroundColor: Color.fromARGB(255, 211, 112, 145),
//       ),
//       body: Center(
//         child: Row(
//           children: [
//             Expanded(
//                 child: Padding(
//               padding: const EdgeInsets.only(left: 16, right: 16),
//               child: GestureDetector(
//                   onTap: () {
//                     print('ludo tupped');
//                   },
//                   child: Image.asset('images/dice1.png')),
//             )),
//             Expanded(
//                 child: Padding(
//               padding: const EdgeInsets.only(left: 16, right: 16),
//               child:
//                   InkWell(onTap: () {}, child: Image.asset('images/dice3.png')),
//             )),
//           ],
//         ),
//       ),
//     );
//   }
// }

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  int ludonumber = 1;
  int rightludonumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 211, 112, 145),
      appBar: AppBar(
        elevation: 16,
        centerTitle: true,
        title: Text('ludo app'),
        backgroundColor: Color.fromARGB(255, 211, 112, 145),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: InkWell(
                  onTap: () {
                    print('ludo tupped');
                    setState(() {
                      ludonumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$ludonumber.png')),
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      rightludonumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$rightludonumber.png')),
            )),
          ],
        ),
      ),
    );
    ;
  }
}
