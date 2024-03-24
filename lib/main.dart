import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage1(),
      ),
    ),
  );
}

// class DicePage extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     var leftDice=5;
//     // TODO: implement build
//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             flex: 1,
//             child: Padding(
//               padding: EdgeInsets.all(16.0),
//               child:MaterialButton(
//                 onPressed: (){
//                   print("Left Button Pressed");
//                 },
//                 child: Image.asset('images/dice$leftDice.png'),
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Padding(
//               padding: EdgeInsets.all(16.0),
//               child: MaterialButton(
//                   onPressed: (){
//                     print("Right Button Pressed");
//                   },
//                   child: Image.asset('images/dice2.png')),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

class DicePage1 extends StatefulWidget {
  const DicePage1({super.key});


  @override
  _State createState() => _State();
}

class _State extends State<DicePage1> {
  int leftDice=5;
  int rightDice=2;
  void changestate()
  {
    setState(() {
      leftDice=Random().nextInt(6)+1;
      rightDice=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child:MaterialButton(
                onPressed: (){
                  setState(() {
                  changestate();
                  });
                  print("Left Button Pressed");
                },
                child: Image.asset('images/dice$leftDice.png'),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: MaterialButton(
                  onPressed: (){
                    setState(() {
                      changestate();
                    });
                    print("Right Button Pressed");

                  },
                  child: Image.asset('images/dice$rightDice.png')),
            ),
          )
        ],
      ),
    );
  }
}

