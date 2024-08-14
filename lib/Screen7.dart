import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Screen8.dart';
class Screen7 extends StatefulWidget {
  const Screen7({super.key});

  @override
  State<Screen7> createState() => _Screen7State();
}

class _Screen7State extends State<Screen7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Center(
        child: Padding(
          padding:  EdgeInsets.only(top: 120.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("How you'll log in",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600,color: Colors.black,),),
              SizedBox(height: 20,),
              Text('Make sure you keep it as secure as\n possible!',style: TextStyle(fontSize: 20,),
                textAlign:TextAlign.center ,),
              SizedBox(height: 60,),
              TextField(
                decoration: InputDecoration(labelText: 'mobile number',

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(labelText: 'Password',

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
              SizedBox(height: 80,),
              GestureDetector(onTap:(){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen8()));
              } ,
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
                  child: Center(child: Text('Proceed',style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),
              ),
              SizedBox(height: 70,),
              Padding(
                padding:  EdgeInsets.only(left: 60.0),
                child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('I agree to the',style: TextStyle(fontSize: 12,color: Colors.black),),
                    SizedBox(width: 5,),
                    Text('Terms and conditions',style: TextStyle(fontSize: 12,color: Colors.pink),),
                    SizedBox(width: 5,),
                    Text('and',style: TextStyle(fontSize: 12,color: Colors.black),),
                    SizedBox(width: 5,),
                    Text('Policy',style: TextStyle(fontSize: 12,color: Colors.pink),),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
