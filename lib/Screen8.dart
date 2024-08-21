import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled4/Screen9.dart';

class Screen8 extends StatefulWidget {
  const Screen8({super.key});


  @override
  State<Screen8> createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {
  bool value=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF0083),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.0, top: 50),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  size: 40,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 90,
                ),
                Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 85,
                ),
                Icon(
                  Icons.notifications,
                  size: 40,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Good Afternoon',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Jaquie!',
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet<void>(
                // context and builder are
                // required properties in this widget
                context: context,
                builder: (BuildContext context) {
                  // we set up a container inside which
                  // we create center column and display text

                  // Returning SizedBox instead of a Container
                  return StatefulBuilder(
                    builder: (BuildContext context, void Function(void Function()) setState) {
                      return SizedBox(
                        height: 400,width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: Text(
                                'How long do you want the loan for?',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text(
                              '2 Months',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900),
                            ),
                            SizedBox(height: 20,),
                            Image.asset('assets/sing.png'),
                            SizedBox(height: 15,),
                            Container(
                              width: 315,
                              height: 85,
                              decoration: ShapeDecoration(shape: RoundedRectangleBorder(
                                  borderRadius:BorderRadius.circular(30) ),color: Colors.white),
                              child: Padding(
                                padding:  EdgeInsets.only(top: 8.0),
                                child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Text('Monthly\npayment',style: TextStyle(color: Colors.black),
                                          textAlign: TextAlign.center,),
                                        Text('NIL',style: TextStyle(color: Colors.grey,fontSize: 20),),



                                      ],
                                    ),
                                    SizedBox(width: 50,),
                                    Column(
                                      children: [
                                        Text('No.of\npayment',style: TextStyle(color: Colors.black),
                                          textAlign: TextAlign.center,),
                                        Text('NIL',style: TextStyle(color: Colors.grey,fontSize: 20),),



                                      ],
                                    ),
                                    SizedBox(width: 50,),
                                    Column(
                                      children: [
                                        Text('Total\npayback',style: TextStyle(color: Colors.black),
                                          textAlign: TextAlign.center,),
                                        Text('NIL',style: TextStyle(color: Colors.grey,fontSize: 20),),



                                      ],
                                    ),



                                  ],
                                ),
                              ),


                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding:  EdgeInsets.only(left: 30.0),
                              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Checkbox(
                                    value: this.value,
                                    onChanged: ( value) {
                                      setState(() {
                                        this.value = value!;
                                      });
                                    },
                                  ), //Checkbox

                                  Text('I agree to the',style: TextStyle(fontSize: 12,color: Colors.black),),
                                  SizedBox(width: 5,),
                                  Text('Terms and conditions',style: TextStyle(fontSize: 12,color: Colors.pink),),
                                  SizedBox(width: 5,),
                                  Text('and',style: TextStyle(fontSize: 12,color: Colors.black),),
                                  SizedBox(width: 5,),
                                  Text('Policy',style: TextStyle(fontSize: 12,color: Colors.pink),),

                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet<void>(
                                  // context and builder are
                                  // required properties in this widget
                                  context: context,isScrollControlled: true,
                                  builder: (BuildContext context) {
                                    // we set up a container inside which
                                    // we create center column and display text

                                    // Returning SizedBox instead of a Container
                                    return StatefulBuilder(
                                      builder: (BuildContext context, void Function(void Function()) setState) {
                                        return SizedBox(
                                          height: 700,width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(top: 20.0),
                                                child: Text(
                                                  'That was way to easy!',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w700),
                                                ),
                                              ),
                                              SizedBox(height: 10,),
                                              Text(
                                                'Congratulations!',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.w900),
                                              ),
                                              SizedBox(height: 30,),
                                              Icon(Icons.check_circle_outline_rounded,
                                                color: Colors.green,size: 60,),
                                              SizedBox(height: 40,),
                                              Text(
                                                ' Transaction summary',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w700),
                                              ),


                                              SizedBox(height: 30,),
                                              Container(
                                                height: 250,
                                                width: 300,
                                                color: Colors.white10,
                                                child:
                                                Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                                  child: Column(
                                                    children: [
                                                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Next repayment date',
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w300),
                                                          ),


                                                          Text(
                                                            '02/04/2023',
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w700),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 10,),
                                                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Ineterst rate:',
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w300),
                                                          ),

                                                          Text(
                                                            '10%',
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w700),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 10,),
                                                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Monthly repayment:',
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w300),
                                                          ),

                                                          Text(
                                                            '\$5,000.00',
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w700),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 10,),
                                                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text(
                                                            'no.of payments:',
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w300),
                                                          ),

                                                          Text(
                                                            '2',
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w700),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 10,),
                                                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Reason:',
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w300),
                                                          ),

                                                          Text(
                                                            'Emergency bills',
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w700),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 10,),
                                                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Total payback amount:',
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w300),
                                                          ),

                                                          Text(
                                                            '\$10,050.00',
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w700),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),


                                              ),

                                              SizedBox(height: 20,),

                                              GestureDetector(
                                                onTap:(){
                                                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen9()));
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
                                                  child: Center(child: Text('Accept',style: TextStyle(color: Colors.white,fontSize: 20),)),
                                                ),
                                              ),
                                              SizedBox(height: 20,),

                                              Container(
                                                width: 300,
                                                height:46 ,
                                                decoration: ShapeDecoration(shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(20),
                                                ),color: Colors.black,shadows: [
                                                  BoxShadow(
                                                    blurRadius: 4,
                                                  )
                                                ]),
                                                child: Center(child: Text('Decline',style: TextStyle(color: Colors.white,fontSize: 20),)),
                                              ),

                                            ],
                                          ),
                                        ); },

                                    );
                                  },
                                );
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
                                child: Center(child: Text('Apply Now',style: TextStyle(color: Colors.white,fontSize: 20),)),
                              ),
                            ),
                          ],
                        ),
                      ); },

                  );
                },
              );
            },
            child: Container(
              width: 327,
              height: 138,
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.white),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 246.0),
                    child: Image.asset(
                      'assets/ww.png',
                      width: 100,
                      height: 80,
                    ),
                  ),
                  Positioned(
                      right: 20,
                      top: 10,

                      child: Text('100%',style: TextStyle(color: Colors.white),)),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Loan Limit',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              '\$10,000.00',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Text(
                              'Request for \$5,500.00',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('assets/line.png')
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 110.0,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/wa.png',
                          width: 57,
                          height: 50,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          'Request for Loan',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 10,
                          child: Center(
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                                size: 20,
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 28,
          ),
          Container(
            height: 400,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'How do you want to use your limit?',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  height: 46,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.white,
                      shadows: [
                        BoxShadow(
                          blurRadius: 4,
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Icon(Icons.download_for_offline),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Emergency bills',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 80.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 10,
                            child: Center(
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                  size: 20,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  height: 46,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.white,
                      shadows: [
                        BoxShadow(
                          blurRadius: 4,
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Icon(Icons.download_for_offline),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Food and Shopping',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 50.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 10,
                            child: Center(
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                  size: 20,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  height: 46,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.white,
                      shadows: [
                        BoxShadow(
                          blurRadius: 4,
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Icon(Icons.download_for_offline),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'others',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 170.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 10,
                            child: Center(
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                  size: 20,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
