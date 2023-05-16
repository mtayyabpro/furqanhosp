import 'package:flutter/material.dart';
import 'package:perfex/login.dart';
import 'package:perfex/pg1.dart';

class loginform extends StatelessWidget {
  const loginform({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.6, right: 35, left: 35
        ),
        child: Column(
          children: [

            TextFormField(

              decoration: InputDecoration(
                labelText: 'Email',
                // label: Text("Email"),
                hintText: 'Email',
                prefixIcon: Icon(Icons.email, color: Colors.white,),
                border: OutlineInputBorder(

                ),

              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: "Password",
                prefixIcon: Icon(Icons.lock,color: Colors.white,),
                suffixIcon: IconButton(
                  onPressed: (){

                  },
                  icon: Icon(Icons.remove_red_eye),
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(


                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff626f80),
                  side: BorderSide(color: Colors.white, width: 2),
                ),
                child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => pg1()));
                    },
                    child: Text("Sign In", style: TextStyle(color: Color(0xffb2bdcb), ),))),
          ],
        ),
      ),
    );
  }
}