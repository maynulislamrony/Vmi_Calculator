import 'dart:html';

import 'package:flutter/material.dart';

class Vmi_Calculator extends StatefulWidget {
  const Vmi_Calculator({ Key? key }) : super(key: key);

  @override
  State<Vmi_Calculator> createState() => _Vmi_CalculatorState();
}

class _Vmi_CalculatorState extends State<Vmi_Calculator> {
  bool ismale=true;
  double height=140;
  int weight=70;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
appBar: AppBar(
title: Text('VMI CALCULATOR'),
centerTitle: true,
backgroundColor: Colors.black,
),
body: Container(
  child: Column(
    children: [
     Expanded(
      flex: 5,
      child:
     Row(
      children: [
        Expanded(child:InkWell(
          onTap:() {
            setState(() {
              ismale=true;
            });
          },
          child: Card(
            color:ismale==true?Colors.teal: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.male,size: 45,color: Colors.white,),
                Text('MALE',style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
        )),

        Expanded(child:InkWell(
          onTap: () {
            setState(() {
              ismale=false;
            });
          },
          child: Card(
            color:ismale==false?Colors.teal: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.female,size: 45,color: Colors.white,),
                Text('MALE',style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
        )),

      ],
     )
     ),
    Expanded(
      flex: 5,
      child: Card(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Height'),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            mainAxisAlignment: MainAxisAlignment.center,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text("${height.toStringAsFixed(0)}"),
              Text("CM"),
            ],
          ),
           Slider(
        min: 70,
        max: 210,
        activeColor: Colors.red,
        thumbColor: Colors.amber,
        value: height,
        onChanged:(val){
        setState(() {
          height=val;
        });
        },
      ),
        ]),
      
  
      )
    ),


       Expanded(
      flex: 5,
      child:
     Row(
      children: [
        Expanded(child:Card(
          color: Colors.grey,
          child: Column(
           children: [
            Text('Weight'),
            Text("${weight}"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed:(() {
                  setState(() {
                    weight--;
                  });
                }), child: Icon(Icons.remove)),

                ElevatedButton(onPressed:(() {
                  setState(() {
                   weight++; 
                  });
                }), child:Icon(Icons.add))

              ],
            )
           ],

  
          ),
        )),

      ],
     )
     ),
    ],
  ),
),

    );
  }
}