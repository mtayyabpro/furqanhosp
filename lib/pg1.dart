import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/widgets.dart';
import 'package:perfex/customers.dart';
import 'package:perfex/leads.dart';
import 'package:perfex/sales.dart';
import 'package:perfex/support.dart';
import 'tasks.dart';



class pg1 extends StatefulWidget {
  @override
  State<pg1> createState() => _pg1State();
}

class _pg1State extends State<pg1> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text("Welcom Divesh Ahuja"),
                  accountEmail: Text("mtayyabpro@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: Text("p"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag),
                title: Text("Sales"),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) => sales(),
                  ));
                },
                enabled: true,
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                enabled: true,
                //selected: true,
              )

            ],
          ),
        ),
          backgroundColor: Color(0xffEFE6F7),
          appBar: AppBar(
            backgroundColor: Color(0xff626f80),
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Column(

              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome! Divesh Ahuja"),

                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.circle_notifications_sharp),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.input),
                      ],
                    ),

                  ],
                )

              ],
            ),
            bottom: const TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              tabs: [
                Tab(child: Text("Dashboard"),),
                Tab(child: Text("Customers"),),
                Tab(child: Text("Tasks"),),
                Tab(child: Text("Support"),),
                Tab(child: Text("Leads"),),



              ],
            ),

          ),

          body: TabBarView(

            children: [


              Container(

                margin: EdgeInsets.all(10),
                width: 100,
                height: 500,
                // color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                  height: 100,
                                  width: 330,
                                  // color: Colors.white,
                                  decoration: BoxDecoration(
                                      color:Color(0xff6f7c8d),
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

                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 10,bottom: 10,right: 20,left: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [

                                            Text("Active Customers",style: TextStyle(
                                                color: Colors.white, fontSize: 20,fontWeight: FontWeight.w700
                                            )),
                                            MySliderApp(),
                                          ],
                                        ),
                                        Column(
                                          children: [

                                          Icon(Icons.supervised_user_circle, size: 60,color: Colors.white,)




                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                              ),
                            ],
                          ),


                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                  height: 100,
                                  width: 330,
                                  // color: Colors.white,
                                  decoration: BoxDecoration(
                                      color:Color(0xff6f7c8d),
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

                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 10,bottom: 10,right: 20,left: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [

                                            Text("Tasks not finished",style: TextStyle(
                                                color: Colors.white, fontSize: 20,fontWeight: FontWeight.w700
                                            )),
                                            MySliderApp(),

                                          ],
                                        ),
                                        Column(
                                          children: [

                                            Icon(Icons.text_snippet,size: 60,color: Colors.white,)




                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                              ),
                            ],
                          ),


                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                  height: 100,
                                  width: 330,
                                  // color: Colors.white,
                                  decoration: BoxDecoration(
                                      color:Color(0xff6f7c8d),
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

                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 10,bottom: 10,right: 20,left: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [

                                            Text("Open Tickets",style: TextStyle(
                                                color: Colors.white, fontSize: 20,fontWeight: FontWeight.w700
                                            )),
                                            MySliderApp(),
                                         //   SignInProgress(),

                                          ],
                                        ),
                                        Column(
                                          children: [

                                            Icon(Icons.headset, size: 60,color: Colors.white,)




                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                              ),
                            ],
                          ),


                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                  height: 100,
                                  width: 330,
                                  // color: Colors.white,
                                  decoration: BoxDecoration(
                                      color:Color(0xff6f7c8d),
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

                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 10,bottom: 10,right: 20,left: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [

                                            Text("Converted Leads",style: TextStyle(
                                                color: Colors.white, fontSize: 20,fontWeight: FontWeight.w700
                                            )),
                                            MySliderApp(),

                                          ],
                                        ),
                                        Column(
                                          children: [

                                            Icon(Icons.person_add_alt_1, size: 60,color: Colors.white,)




                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                              ),
                            ],
                          ),


                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                  height: 110,
                                  width: 160,
                                  // color: Colors.white,
                                  decoration: BoxDecoration(
                                      color:Color(0xff6f7c8d),
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

                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 40),
                                    child: Column(
                                      children: [

                                        Text("11",style: TextStyle(
                                            color: Colors.white, fontSize: 20,fontWeight: FontWeight.w700
                                        )),
                                        Text("Active Contacts"
                                            ,style: TextStyle(
                                                color: Colors.white
                                            ))


                                      ],
                                    ),
                                  )
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Container(
                              height: 110,
                              width: 160,
                              // color: Colors.white,
                              decoration: BoxDecoration(
                                  color: Color(0xff707c8c),
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

                              child: Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Column(
                                  children: [


                                    Text("0",style: TextStyle(
                                        color: Colors.white, fontSize: 20,fontWeight: FontWeight.w700
                                    )),
                                    Text("InActive Contacts"
                                        ,style: TextStyle(
                                            color: Colors.white
                                        ))


                                  ],
                                ),
                              )
                          )

                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                  height: 110,
                                  width: 160,
                                  // color: Colors.white,
                                  decoration: BoxDecoration(
                                      color:Color(0xff6f7c8d),
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

                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 40),
                                    child: Column(
                                      children: [

                                        Text("0",style: TextStyle(
                                            color: Colors.white, fontSize: 20,fontWeight: FontWeight.w700
                                        )),
                                        Text("High priority Tickets"
                                            ,style: TextStyle(
                                                color: Colors.white
                                            ))


                                      ],
                                    ),
                                  )
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Container(
                              height: 110,
                              width: 160,
                              // color: Colors.white,
                              decoration: BoxDecoration(
                                  color: Color(0xff707c8c),
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

                              child: Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Column(
                                  children: [


                                    Text("0",style: TextStyle(
                                        color: Colors.white, fontSize: 20,fontWeight: FontWeight.w700
                                    )),
                                    Text("Low Priority Tickets"
                                        ,style: TextStyle(
                                            color: Colors.white
                                        ))


                                  ],
                                ),
                              )
                          )

                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                  height: 110,
                                  width: 160,
                                  // color: Colors.white,
                                  decoration: BoxDecoration(
                                      color:Color(0xff6f7c8d),
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

                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 40),
                                    child: Column(
                                      children: [

                                        Text("1",style: TextStyle(
                                            color: Colors.white, fontSize: 20,fontWeight: FontWeight.w700
                                        )),
                                        Text("Mid Priority Tickets"
                                            ,style: TextStyle(
                                                color: Colors.white
                                            ))


                                      ],
                                    ),
                                  )
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Container(
                              height: 110,
                              width: 160,
                              // color: Colors.white,
                              decoration: BoxDecoration(
                                  color: Color(0xff707c8c),
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

                              child: Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Column(
                                  children: [


                                    Text("1",style: TextStyle(
                                        color: Colors.white, fontSize: 20,fontWeight: FontWeight.w700
                                    )),
                                    Text("Tickets Without Contact"
                                        ,style: TextStyle(
                                            color: Colors.white
                                        ))


                                  ],
                                ),
                              )
                          )

                        ],
                      ),

                    ],
                  ),
                ),
              ),
              customers(),
              tasks(),
              support(),
              leads(),




            ],


          )
      ),
    );
  }

}
class MySliderApp extends StatefulWidget {
  const MySliderApp({Key? key}) : super(key: key);

  @override
  State<MySliderApp> createState() => _MySliderAppState();
}



class _MySliderAppState extends State<MySliderApp> {
  int _value =4;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Slider(value: _value.toDouble(),
              min: 0,
              max: 4,
              activeColor: Color(0xfff8b31a),
              inactiveColor: Colors.white,
              onChanged: (double newValue){
            setState(() {
              _value = newValue.round();

            });

              },
          )
        ],
      ),
    );
  }
}

