import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screen6.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 100.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: Image.asset('assets/rt.png')),
              SizedBox(
                height: 40,
              ),
              Text(
                'Add yur mobile number',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'we will need to confirm it by sending a text',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: TextField(
                  decoration: InputDecoration(labelText: 'mobile number',

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 80,
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => Screen6()));
                    },
                    child: Container(
                      width: 300,
                      height: 46,
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.pinkAccent,
                          shadows: [
                            BoxShadow(
                              blurRadius: 4,
                            )
                          ]),
                      child: Center(
                          child: Text(
                        'Next',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
