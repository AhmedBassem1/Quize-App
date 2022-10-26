import 'package:flutter/material.dart';
import 'package:quiz/Answers.dart';
import 'package:quiz/quition.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index=0;
  changIndex(){

      index++;
      setState((){});
      print(index);

  }
  Restart(){
    index =0 ;
    print(index);
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
       backgroundColor: Colors.white,
        elevation: 0,
      ),
      body:Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Icon(Icons.question_mark_outlined,size: 150,color: Colors.yellow),
            question(index:index),
            Answers(

                rst: Restart, fun: (){
                index ++ ;
                setState(() {
                });
                print(index);
              }, index:index, ),

          ],
        ),
      ),
    );
  }
}