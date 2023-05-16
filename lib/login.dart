import 'package:flutter/material.dart';

import 'loginform.dart';
class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff626f80)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.only( top: 120),
                child: Column(

                  children: [
                    Text("Perfex Master", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,color: Colors.white),),
                    Text("Good afternoon", ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child:
              loginform(),
              
            ),

           // Container(
           //   padding: EdgeInsets.only(
           //       top: MediaQuery.of(context).size.height * 0.7, right: 35, left: 35
           //   ),
           //   decoration: BoxDecoration(
           //                    border: Border.all(width: 0.8),
           //
           //   ),
           //   child: Center(child: Text("Sign In", style: TextStyle(color: Colors.white),)),
           // )

          ],
        ),
      ),
    );
  }
}


