import 'package:flutter/material.dart';

class question extends StatelessWidget{

  question({required this.index});

   int index;
  List q=['what your favorite player',
    'what your favorite meal',
    'what your favorite color',
    'what your favorite Club',
    'what your favorite city',

  ];
  @override
  Widget build(BuildContext context) {
     return index < q.length? Text(
       q[index],
       style: TextStyle(
         fontSize: 18,
         fontWeight: FontWeight.bold,
         color: Colors.black,
       ),
     ) :Container() ;
  }
}