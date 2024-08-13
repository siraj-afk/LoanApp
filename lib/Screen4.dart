import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screen5.dart';
class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

    body: Padding(
    padding:  EdgeInsets.only(top: 100.0),
    child: Column(
    children: [
    Center(child: Image.asset('assets/sr.png')),
    SizedBox(height: 40,),
    Text('Pay Marchents',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),),
    SizedBox(height: 30,),
    Text('Even with insufficient balnce,pay by\n phone at merchants with pay fast\n Account',
    textAlign: TextAlign.center,
    style:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w300) ,),
    SizedBox(height: 40,),
    Container(
    height: 5,
    width: 30,
    color: Colors.black,

    ),
    SizedBox(height: 80,),
    Column(
    children: [
    GestureDetector(onTap: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen5()));
    },
    child: Container(
    width: 300,
    height:46 ,
    decoration: ShapeDecoration(shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
    ),color: Colors.pinkAccent,shadows: [
    BoxShadow(
    blurRadius: 4,
    )
    ]),
    child: Center(child: Text('Next',style: TextStyle(color: Colors.white,fontSize: 20),)),
    ),
    ),
    ],
    )
    ],
    ),

    ),

    );
    }
    }






