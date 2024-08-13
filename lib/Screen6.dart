import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'Screen7.dart';
class Screen6 extends StatefulWidget {
  const Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}
//hello
class _Screen6State extends State<Screen6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: 
          
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Padding(
              padding:  EdgeInsets.only(top: 120.0),
              child: Text('Verify',style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.w600),),
            )),
            SizedBox(height: 40,),
            Text('Please enter the 6 digit one time \n code to activate your account!',style: TextStyle(fontSize: 20),),
            SizedBox(height: 40,),
            OtpTextField(
              numberOfFields: 6,
              borderColor: Colors.black,
                showFieldAsBox:true
        
            ),
            SizedBox(height: 40,),
            Text("didn't recieve a code?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
            SizedBox(height:30),
            Text('Resend code!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
            SizedBox(height: 100,),
            GestureDetector(onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen7()));
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
                child: Center(child: Text('Verify',style: TextStyle(color: Colors.white,fontSize: 20),)),
              ),
            ),
        
          ],
        ),
      ),






    );
  }
}
