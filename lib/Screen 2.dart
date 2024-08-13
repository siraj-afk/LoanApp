import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'Screen3.dart';
import 'Screen5.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final introKey = GlobalKey<IntroductionScreenState>();
  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const Screen5()),
    );
  }
  @override
  Widget build(BuildContext context) {

    return IntroductionScreen(
      key:introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,


      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward,color: Colors.black,),
      pages: [
       PageViewModel(decoration: PageDecoration(
         pageMargin: EdgeInsets.only(top: 120)
       ),
         title: "Send Money",
         body:
         "Send money to all networks and banks\n rght from your fast\n account",
         image: Image.asset('assets/grp.png'),
         footer: Column(
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
       ),
       PageViewModel(decoration: PageDecoration(
           pageMargin: EdgeInsets.only(top: 120)
       ),
         title: "Pay bills",
         body:
         "Pay bills such as electricity,water bills,tv\n subscriptions etc.\n Buy airtimes and bundles",
         image: Image.asset('assets/ast.png',),
           footer: Column(
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
       ),
        PageViewModel(decoration: PageDecoration(
            pageMargin: EdgeInsets.only(top: 120)
        ),
            title: "Pay Marchents",
            body:
            "Even with insufficient balance,pay by\n phone at marchents with pay fast\n Accounts.",
            image: Image.asset('assets/sr.png',),
            footer: Column(
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
        ),

     ],



    );
  }
}

