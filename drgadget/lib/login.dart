import 'dart:convert';

import 'package:drgadget/order.dart';
import 'package:drgadget/signup.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


import 'main.dart';
class Login extends StatelessWidget {
  final email=TextEditingController();
  final pass=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          title: Row(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (BuildContext context){
                      return Index();
                    }),
                  );

                },
                child: Container(
                  child: Image.asset(
                    'assets/drg.png',
                    width: 130,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15, top: 33),
                width: 170,
                child: Text(
                  "UK's#1 Mobile Repair Specialist",
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 10,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.menu_outlined,
                  color: Colors.lightBlue,
                  size: 40,
                ),
              )
            ],
          )),
      body: ListView(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff6bceff),
                      Colors.lightBlue,
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(90)
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Icon(Icons.person,
                      size: 90,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 32,
                      ),
                      child: Center(
                        child: Text('Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 62),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 45,
                    padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      controller: email,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.person,
                          color: Color(0xff6bceff),
                        ),
                        hintText: 'Username',
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 45,
                    margin: EdgeInsets.only(top: 32),
                    padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      controller: pass,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.vpn_key,
                          color: Color(0xff6bceff),
                        ),
                        hintText: 'Password',
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 16, right: 32
                      ),
                      child: Text('Forgot Password ?',
                        style: TextStyle(
                            color: Colors.grey
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 60,bottom: 0),
                    child:
                  InkWell(
                    onTap: (){
                      login(context);
                    },
                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width/1.2,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff6bceff),
                              Color(0xFF00abff),
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)
                          )
                      ),
                      child: Center(
                        child: Text('Login'.toUpperCase(),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                  ),
                ],
              ),
            ),

            Container(
              child:
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Don't have an account ?"),
                  Text("Sign Up",style: TextStyle(
                      color: Color(0xff6bceff)
                  ,fontWeight: FontWeight.bold),),
                ],
              ),
              onTap: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (BuildContext context){
                    return Signup();
                  }),
                );              },
            ),
              ),
          ],

        ),

    );
  }
  Future<void> login(BuildContext context) async {
    if(email.text.isNotEmpty && pass.text.isNotEmpty){
      var response = await http.post(Uri.http("192.168.18.126:3000","login"),headers: {"Content-Type": "application/json"},
          body: jsonEncode({
            "email": email.text,
            "password": pass.text
          }));
      print(response.statusCode);
      if(response.statusCode==200)
      {
        print(response.statusCode);
        print(response.body);
        showdialoge(context);
      }
      else{
        print(response.statusCode);
        Flushbar(
          title: "Login Failed !!",
          message: "Incorrect username or password.......",
          duration: Duration(seconds: 5),
        ).show(context);
      }

    }
    else{
      Flushbar(
        title: "Empty Fields",
        message: "Please fill all Fields.......",
        duration: Duration(seconds: 5),
      ).show(context);
    }


  }
  showdialoge(BuildContext context){
    Dialog dialogbox = Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)), //this right here
      child: Container(
        height: 250.0,
        width: 200.0,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.only(top: 30),
              child: Text('SignIn Successfully!!', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
            ),
            Padding(padding: EdgeInsets.only(top: 30.0)),
            Container(
              padding: EdgeInsets.only(top: 30, bottom: 0),
              child: InkWell(
                onTap: () {
                  email.text="";
                  pass.text="";
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (BuildContext context){
                      return Method3();
                    }),
                  );
                },
                child: Container(
                  height: 45,
                  width: 100,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff6bceff),
                          Color(0xFF00abff),
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Center(
                    child: Text(
                      'OK',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    showDialog(context: context, builder: (BuildContext context) => dialogbox);}
}
