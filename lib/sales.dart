import 'package:flutter/material.dart';

import 'switch screen.dart';
//import 'package:flutter/src/painting/border_radius.dart';

class sales extends StatelessWidget {

  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 2,
    child: Scaffold(
      backgroundColor: Color(0xff4e9257),
      appBar: AppBar(
        bottom: const TabBar(
          tabs: [

            Tab(child: Text("Proposals"),),
            Tab(child: Text("Invoices"),)
          ],
        ),
      ),


      body:

      ListView(


        children: [

          Container(

            margin: EdgeInsets.only(right: 10,left: 10,bottom: 10),
            height: 610,
            width: 200,
        decoration: BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
          width: 0.5,

          color: Colors.transparent,
            ),
            boxShadow: [
          BoxShadow(

            blurRadius: 0.5,
          )
            ]
        ),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Container(
                  height: 60,
                  width: 360,
                  decoration: BoxDecoration(
                      color:Color(0xff4e9257),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60),bottomRight: Radius.circular(60)),
                  border: Border.all(
                        width: 0.5,


                        color: Colors.transparent,
                      ),
                      // boxShadow: [
                      //   BoxShadow(
                      //
                      //     blurRadius: 0.5,
                      //   )
                      // ]
                  ),
                  child:Column(

                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Text("Total: 0", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Text("Filtered: 0", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),),
                              ],
                            ),
                          )
                        ],

                      ),


                    ],
                  ),


                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(

                    children: [
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Search", labelStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),
                            suffixIcon: Icon(Icons.search)
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 160,

                  decoration: BoxDecoration(
                    color:Colors.greenAccent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 0.5,


                      color: Colors.transparent,
                    ),
                    // boxShadow: [
                    //   BoxShadow(
                    //
                    //     blurRadius: 0.5,
                    //   )
                    // ]
                  ),
                  child:Column(

                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(Icons.blur_circular)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Name"),
                                Text("abc@gmail.com"),
                                Text("something else")
                              ],
                            ),
                          ),

                        ],

                      ),
                      Divider(

                        thickness: 2,
                        height: 40,
                        indent: 10,
                        endIndent: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.call, color: Color(0xff716d6c),),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.mail_outline, color: Color(0xff716d6c),),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.edit, color: Color(0xff716d6c),),
                            ],
                          ),
                          SwitchScreen(),
                          Column(
                            children: [
                              Icon(Icons.delete, color: Color(0xfffe0100),),
                            ],
                          )
                        ],
                      )



                    ],
                  ),


                ),



                FloatingActionButton.extended(

                  label: Text("ADD CUTOMER"),
                  icon: Icon(Icons.add_circle_outlined),
                    onPressed: (){

                    },
                  backgroundColor: Color(0xff4e9257),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                ),




              ],
            )

            ),


        ],

      ),
    ),
  );
  }

