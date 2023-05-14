import 'package:flutter/material.dart';
//import 'package:flutter/src/painting/border_radius.dart';

class leads extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Color(0xff626f80),
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
                    color:Color(0xff626f80),
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



              FloatingActionButton.extended(

                label: Text("ADD LEAD"),
                icon: Icon(Icons.add_circle_outlined),
                  onPressed: (){

                  },
                backgroundColor: Color(0xff626f80),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              ),




            ],
          )

          ),


      ],

    ),
  );
  }

