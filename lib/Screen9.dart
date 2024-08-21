import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen9 extends StatefulWidget {
  const Screen9({super.key});

  @override
  State<Screen9> createState() => _Screen9State();
}

class _Screen9State extends State<Screen9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFF0083),
        body: SingleChildScrollView(
          child: Column(
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
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Jaquie!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
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
                          child: Text(
                            '50%', style: TextStyle(color: Colors.white),)),


                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Loan Balance',
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
                                  '\$3,000.00  ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'of \$10,050.00',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  '39 days left',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
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
                              width: 150,
                            ),
                            Text(
                              'Repay loan ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.pinkAccent,
                              radius: 10,
                              child: Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet<void>(
                                        context: context,
                                        isScrollControlled: true,
                                        builder: (BuildContext context) {
                                          return StatefulBuilder(
                                            builder: (BuildContext context,
                                                void Function(void Function()) setState) {
                                              return SizedBox(
                                                height: 337,
                                                width: double.infinity,
                                                child: DefaultTabController(
                                                  length: 2,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsets.only(
                                                            left: 8.0, top: 10.0),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment
                                                              .spaceBetween,
                                                          children: [
                                                            Text('Repay loan',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 20,
                                                                  fontWeight: FontWeight
                                                                      .w500),),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                  right: 12.0),
                                                              child: Icon(
                                                                  Icons.close),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 10,),

                                                      TabBar(
                                                        indicatorSize: TabBarIndicatorSize
                                                            .tab,
                                                        indicator: BoxDecoration(
                                                            color: Colors.red,
                                                            borderRadius: BorderRadius
                                                                .circular(20)
                                                        ),
                                                        labelColor: Colors.black,
                                                        dividerColor: Colors
                                                            .black,
                                                        tabs: [
                                                          Tab(
                                                              icon: Text(
                                                                "Full Repayment",
                                                                style: TextStyle(
                                                                    fontSize: 15),)
                                                          ),
                                                          Tab(
                                                              icon: Text(
                                                                'Partial Repayment',
                                                                style: TextStyle(
                                                                    fontSize: 15),)
                                                          ),

                                                        ],
                                                      ), Expanded(
                                                        child: TabBarView(
                                                            children: [
                                                              Container(
                                                                color: Colors
                                                                    .white,
                                                                child: Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                      left: 10.0),
                                                                  child: Column(
                                                                    crossAxisAlignment: CrossAxisAlignment
                                                                        .start,
                                                                    children: [
                                                                      SizedBox(
                                                                        height: 20,),
                                                                      Padding(
                                                                        padding: EdgeInsets
                                                                            .only(
                                                                            left: 20.0),
                                                                        child: Text(
                                                                          'Repay your loan today and take another one \n immediately',
                                                                          style: TextStyle(
                                                                              color: Colors
                                                                                  .grey,
                                                                              fontSize: 15,
                                                                              fontWeight: FontWeight
                                                                                  .w300),
                                                                          textAlign: TextAlign
                                                                              .center,),
                                                                      ),
                                                                      SizedBox(
                                                                        height: 12,),
                                                                      Text(
                                                                        'you currently owe',
                                                                        style: TextStyle(
                                                                            color: Colors
                                                                                .black,
                                                                            fontSize: 15,
                                                                            fontWeight: FontWeight
                                                                                .w400),
                                                                        textAlign: TextAlign
                                                                            .start,),
                                                                      SizedBox(
                                                                        height: 10,),
                                                                      Text(
                                                                        '\$10,050.00',
                                                                        style: TextStyle(
                                                                            color: Colors
                                                                                .black,
                                                                            fontSize: 20,
                                                                            fontWeight: FontWeight
                                                                                .w500),
                                                                        textAlign: TextAlign
                                                                            .start,),
                                                                      SizedBox(
                                                                        height: 10,),
                                                                      Padding(
                                                                        padding: EdgeInsets
                                                                            .only(
                                                                            left: 20.0),
                                                                        child: GestureDetector(
                                                                          onTap: () {
                                                                            //shwmodel start
                                                                            showModalBottomSheet<void>(

                                                                              context: context,isScrollControlled: true,
                                                                              builder: (BuildContext context) {
                                                                                // we set up a container inside which
                                                                                // we create center column and display text

                                                                                // Returning SizedBox instead of a Container
                                                                                return SizedBox(
                                                                                  height: 500,width: double.infinity,
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
                                                                                            fontSize: 20,
                                                                                            fontWeight: FontWeight.w700),
                                                                                      ),


                                                                                      SizedBox(height: 20,),
                                                                                      Text(
                                                                                        ' \$10,050.00',
                                                                                        style: TextStyle(
                                                                                            color: Colors.black,
                                                                                            fontSize: 30,
                                                                                            fontWeight: FontWeight.w700),
                                                                                      ),


                                                                                      SizedBox(height: 20,),
                                                                                      Text(
                                                                                        ' Your loan has fully \n paid',
                                                                                        style: TextStyle(
                                                                                            color: Colors.black,
                                                                                            fontSize: 20,
                                                                                            fontWeight: FontWeight.w700,)
                                                                                        ,textAlign: TextAlign.center,
                                                                                      ),
                                                                                      SizedBox(height: 30,),

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
                                                                                        child: Center(child: Text('Okay',style: TextStyle(color: Colors.white,fontSize: 20),)),
                                                                                      ),
                                                                                      SizedBox(height: 20,),



                                                                                    ],
                                                                                  ),
                                                                                );
                                                                              },
                                                                            );
                                                                            //shwmodel end
                                                                          },
                                                                          child: Padding(
                                                                            padding:  EdgeInsets.only(left: 40.0),
                                                                            child: Container(
                                                                              width: 250,
                                                                              height: 46,
                                                                              decoration: ShapeDecoration(
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius
                                                                                        .circular(
                                                                                        25),
                                                                                  ),
                                                                                  color: Colors
                                                                                      .pinkAccent,
                                                                                  shadows: [
                                                                                    BoxShadow(
                                                                                      blurRadius: 4,
                                                                                    )
                                                                                  ]),
                                                                              child: Center(
                                                                                  child: Text(
                                                                                    'Continue',
                                                                                    style: TextStyle(
                                                                                        color: Colors
                                                                                            .white,
                                                                                        fontSize: 20),)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),

                                                                    ],
                                                                  ),
                                                                ),


                                                              ),
                                                              Container(
                                                                color: Colors
                                                                    .white,
                                                                child: Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                      left: 10.0),
                                                                  child: Column(
                                                                    crossAxisAlignment: CrossAxisAlignment
                                                                        .start,
                                                                    children: [
                                                                      SizedBox(
                                                                        height: 20,),
                                                                      Padding(
                                                                        padding: EdgeInsets
                                                                            .only(
                                                                            left: 20.0),
                                                                        child: Text(
                                                                          'Repay your loan today and take another one \n immediately',
                                                                          style: TextStyle(
                                                                              color: Colors
                                                                                  .grey,
                                                                              fontSize: 15,
                                                                              fontWeight: FontWeight
                                                                                  .w300),
                                                                          textAlign: TextAlign
                                                                              .center,),
                                                                      ),
                                                                      SizedBox(
                                                                        height: 10,),
                                                                      TextField(
                                                                        decoration: InputDecoration(
                                                                            labelText: 'Enter Amount',

                                                                            border: OutlineInputBorder(
                                                                                borderRadius: BorderRadius
                                                                                    .circular(
                                                                                    30))),
                                                                      ),

                                                                      SizedBox(
                                                                        height: 10,),
                                                                      Padding(
                                                                        padding: EdgeInsets
                                                                            .only(
                                                                            left: 20.0),
                                                                        child: Padding(
                                                                          padding:  EdgeInsets.only(left: 40.0),
                                                                          child: Container(
                                                                            width: 250,
                                                                            height: 46,
                                                                            decoration: ShapeDecoration(
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius
                                                                                      .circular(
                                                                                      25),
                                                                                ),
                                                                                color: Colors
                                                                                    .pinkAccent,
                                                                                shadows: [
                                                                                  BoxShadow(
                                                                                    blurRadius: 4,
                                                                                  )
                                                                                ]),
                                                                            child: Center(
                                                                                child: Text(
                                                                                  'Continue',
                                                                                  style: TextStyle(
                                                                                      color: Colors
                                                                                          .white,
                                                                                      fontSize: 20),)),
                                                                          ),
                                                                        ),
                                                                      ),

                                                                    ],
                                                                  ),
                                                                ),


                                                              )
                                                            ]),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },);
                                        },
                                      );
                                    },
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                  )),
                            ),
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
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Transactions', style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight
                                  .w600, fontSize: 20),),
                              Text('See All', style: TextStyle(
                                  color: Colors.pink, fontWeight: FontWeight
                                  .w600),),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text('Mini-Statement', style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),),
                        SizedBox(height: 20,),
                        Container(
                          height: 50,
                          width: 350,
                          color: Colors.white,
                          child:
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Loan disbursment', style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),),
                                  Text('2022-09-12', style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12),),

                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 13.0),
                                child: Text('\$10,050.00', style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 350,
                          color: Colors.white,
                          child:
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Withdraw to bank', style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),),
                                  Text('2022-09-12', style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12),),

                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 13.0),
                                child: Text('-\$10,050.00', style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 350,
                          color: Colors.white,
                          child:
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Loan repayment', style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),),
                                  Text('2022-09-12', style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12),),

                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 13.0),
                                child: Text('\$3,000.00', style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 350,
                          color: Colors.white,
                          child:
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Loan Repayment Fees', style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),),
                                  Text('2022-09-12', style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12),),

                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 13.0),
                                child: Text('-\$32', style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )

              ]
          ),
        )
    );
  }
}
