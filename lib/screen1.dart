import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Screen 2.dart';
class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Padding(
        padding:  EdgeInsets.only(top: 90.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Pay fast',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),),
            SizedBox(height: 20,),
            Text('Forget everything',style:
            TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w300),),
            Text('you know about',style:
            TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w300),),
            Text('Banking',style:
            TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w400),),

            SizedBox(height: 50,),
            Image.asset('assets/v1.png'),
            Center(child: Image.asset('assets/v.png')),
            SizedBox(height: 50,),
            Column(
              children: [
                GestureDetector(onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen2()));
                },
                  child: Container(
                    width: 300,
                    height:46 ,
                    decoration: ShapeDecoration(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),color: Colors.pinkAccent),
                    child: Center(child: Text('Log In',style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Column(
              children: [
                Container(
                  width: 300,
                  height:46 ,
                  decoration: ShapeDecoration(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),color: Color(0x3F000000),shadows: [
                    BoxShadow(
                      blurRadius: 4,
                    )
                  ]),
                  child: Center(child: Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),
              ],
            )

          ],
        ),
      ),


    );
  }
}
