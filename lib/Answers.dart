import 'package:flutter/material.dart';

class Answers extends StatefulWidget{
 final fun;
 final index;
 final rst;


 Answers({Key? key, required this.fun,required this.index,required this.rst}) : super(key: key);

  @override
  State<Answers> createState() => _AnswersState();
}

class _AnswersState extends State<Answers> {

  int score=0;
 List a=[
   [
     {'answer': "1", 'score': 10},
     {'answer': "2", 'score': 0},
     {'answer': "3", 'score': 0},
     {'answer': "4", 'score': 0},
   ],
   [
     {'answer':"pizza",'score':10},
     {'answer':"flafel",'score':0},
     {'answer':"nodels",'score':0},
     {'answer':"burger",'score':0},
   ],
   [
     {'answer':"black",'score':10},
     {'answer':"white",'score':0},
     {'answer':"blue",'score':0},
     {'answer':"red",'score':0},

   ],
   [
     {'answer':"real madrid",'score':10},

     {'answer':"barca",'score':0},

     {'answer':"man city",'score':0},

     {'answer':"leeds",'score':0},

   ],
   [
     {'answer':"Paris",'score':10},
     {'answer':"dubie",'score':0},
     {'answer':"cairo",'score':0},
     {'answer':"new york",'score':0},

   ],

 ];

  @override
  Widget build(BuildContext context) {
    return widget.index < a.length? Column(
        children: [
          ...a[widget.index].map(
              (e){
                return GestureDetector(

                  onTap:(){
                    widget.fun();
                    score += e["score" ]  as int;
                    print(score);
                    setState(() {
                      if(widget.index < e.length);
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    margin: EdgeInsets.symmetric(horizontal: 18,vertical: 10),
                    alignment: Alignment.center,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(20),
                      color: Colors.yellow,
                    ),
                    child: Text(e["answer"],
                      style: TextStyle(
                          fontSize: 18,
                      ),
                    ),
                  ),
                );
              }
          )

        ],
    ) :Container(

        height: 400,
        width: 400,
        child: Column(
          children: [
            Text("Score is $score",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold)),
            SizedBox(height: 100,),

            GestureDetector(
                onTap: () {
                  widget.rst();
                  score =0;
                  setState(() {
                  });
                },
                child: Text("Restart quiz ?",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold))),

          ],
        )
    );
  }
}