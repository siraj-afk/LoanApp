import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screen4.dart';
class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.only(top: 100.0),
        child: Column(
          children: [
            Center(child: Image.asset('assets/ast.png')),
            SizedBox(height: 40,),
            Text('Pay Bills',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),),
            SizedBox(height: 30,),
            Text('pay bills such as electriity,water bill tv\n subscription.etc...\n buy artime & bundles',
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
                Container(
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
              ],
            )
          ],
        ),

      ),

    );
  }
}
