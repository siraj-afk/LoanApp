import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen8 extends StatefulWidget {
  const Screen8({super.key});

  @override
  State<Screen8> createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body:
      Column(
          children: [
      Padding(
      padding: EdgeInsets.only(left: 10.0, top: 50),
      child: Row(
        children: [
          Icon(Icons.menu, size: 40, color: Colors.white,),
          SizedBox(width: 90,),
          Text('Welcome', style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),),
          SizedBox(width: 85,),
          Icon(Icons.notifications, size: 40, color: Colors.white,),
        ],
      ),
    ),
    SizedBox(height: 50,),
    Text('Good Afternoon',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),),
    SizedBox(height: 15,),
    Text('Jaquie!',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.w700),),
    SizedBox(height: 30,),
    Container(
    width: 327,
    height: 138,
      decoration: ShapeDecoration(shape: RoundedRectangleBorder
        (borderRadius: BorderRadius.circular(5)),color: Colors.white),
      child: Stack(
        children: [
          Padding(
            padding:  EdgeInsets.only(left: 246.0),
            child: Image.asset('assets/ww.png',width: 100,height: 80,),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 8.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Loan Limit',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Text('\$10,000.00',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                    SizedBox(width: 40,),
                    Text('Request for \$5,500.00',style: TextStyle
                      (color: Colors.black,fontSize: 15,fontWeight: FontWeight.w300),),

                  ],
                ),
                SizedBox(height: 10,),
                Image.asset('assets/line.png')




              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 110.0,),
            child: Row(
              children: [
                Image.asset('assets/wa.png',width: 57,height: 50,),
                SizedBox(width: 50,),
                Text('Request for Loan',style: TextStyle
                  (color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                SizedBox(width: 10,),
                CircleAvatar(backgroundColor: Colors.white,radius: 10,
                  child: Center(child: Icon(Icons.arrow_forward,color: Colors.black,size: 20 ,)),),


              ],
            ),

          ),
        ],
      ),

    ),
            SizedBox(height: 28,),
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.white,
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: 20.0),
                    child: Text('How do you want to use your limit?',style:TextStyle(
                      color: Colors.black,fontSize: 15,fontWeight: FontWeight.w700
                    ) ,),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: 300,
                    height:46 ,
                    decoration: ShapeDecoration(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),color: Colors.white,shadows: [
                      BoxShadow(
                        blurRadius: 4,
                      )
                    ]),
                    child: Padding(
                      padding:  EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Icon(Icons.download_for_offline),
                          SizedBox(width: 10,),
                          Text('Emergency bills',style: TextStyle(color: Colors.black,fontSize: 20),),
                          Padding(
                            padding:  EdgeInsets.only(left: 80.0),
                            child: CircleAvatar(backgroundColor: Colors.white,radius: 10,
                              child: Center(child: Icon(Icons.arrow_forward,color: Colors.black,size: 20 ,)),),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 300,
                    height:46 ,
                    decoration: ShapeDecoration(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),color: Colors.white,shadows: [
                      BoxShadow(
                        blurRadius: 4,
                      )
                    ]),
                    child: Padding(
                      padding:  EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Icon(Icons.download_for_offline),
                          SizedBox(width: 10,),
                          Text('Emergency bills',style: TextStyle(color: Colors.black,fontSize: 20),),
                          Padding(
                            padding:  EdgeInsets.only(left: 80.0),
                            child: CircleAvatar(backgroundColor: Colors.white,radius: 10,
                              child: Center(child: Icon(Icons.arrow_forward,color: Colors.black,size: 20 ,)),),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 300,
                    height:46 ,
                    decoration: ShapeDecoration(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),color: Colors.white,shadows: [
                      BoxShadow(
                        blurRadius: 4,
                      )
                    ]),
                    child: Padding(
                      padding:  EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Icon(Icons.download_for_offline),
                          SizedBox(width: 10,),
                          Text('Emergency bills',style: TextStyle(color: Colors.black,fontSize: 20),),
                          Padding(
                            padding:  EdgeInsets.only(left: 80.0),
                            child: CircleAvatar(backgroundColor: Colors.white,radius: 10,
                              child: Center(child: Icon(Icons.arrow_forward,color: Colors.black,size: 20 ,)),),
                          ),

                        ],
                      ),
                    ),
                  ),





                ],
              ),
            )


    ],
    )
    ,
    );
  }
}
