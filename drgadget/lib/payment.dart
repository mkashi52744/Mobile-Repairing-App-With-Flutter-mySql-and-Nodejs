import 'package:drgadget/data.dart';
import 'package:drgadget/login.dart';
import 'package:drgadget/order.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Payment2 extends StatefulWidget {
  @override
  _Payment2State createState() => _Payment2State();
}

class _Payment2State extends State<Payment2> {
  int _groupValue=-1;
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
        ),
      ),
      body: SingleChildScrollView(child:
    Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              "Device Sending Options",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Divider(
              color: Colors.black26,
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Radio(
                            value: 0,
                            groupValue: _groupValue,
                            onChanged: (newValue) =>
                                setState(() => _groupValue = newValue),
                            activeColor: Colors.blue,
                          )),
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          'assets/mail.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                      Container(padding: EdgeInsets.only(left: 20),
                        child: Text(" Mail in(Free)",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: 5, left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        "Royal Mail Postage Service(Pre-Paid Both Ways Ins. 500\nInsurance"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Divider(
                    color: Colors.black26,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Radio(
                            value: 1,
                            groupValue: _groupValue,
                            onChanged: (newValue) =>
                                setState(() => _groupValue = newValue),
                            activeColor: Colors.blue,
                          )),
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          'assets/walk.png',
                          width: 50,
                          height: 50,
                        ),
                      ),
                      Container(padding: EdgeInsets.only(left: 20),
                        child: Text("Walk in",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: 5, left: 10),
                  child:Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        "Just drop in our Romford Repair Centre and collect latter same day"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Divider(
                    color: Colors.black26,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Radio(
                            value: 2,
                            groupValue: _groupValue,
                            onChanged: (newValue) => setState(() => _groupValue = newValue),
                            activeColor: Colors.blue,
                          )),
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          'assets/courior.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                      Container(padding: EdgeInsets.only(left: 20),
                        child: Text("   Courier Collect",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: 5, left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child:Text("Our Courier will collect from you"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Divider(
                    color: Colors.black26,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Radio(
                            value: 3,
                            groupValue: _groupValue,
                            onChanged: (newValue) =>
                                setState(() => _groupValue = newValue),
                            activeColor: Colors.blue,
                          )),
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          'assets/wait.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                      Container(padding: EdgeInsets.only(left: 20),
                        child: Text("    Express while you wait",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: 5, left: 10),
                  child:Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        "Speedy 30 minutes Repair when you book and come to us"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Divider(
                    color: Colors.black26,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: SizedBox(
              width: 200,
              height: 45,
              child: RaisedButton(

                color: Colors.lightBlue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                onPressed: () {
                  if(_groupValue==0)
                    {
                      AppData.sending_method="Mail in(Free)";
                      AppData.sending_price=0.0;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (BuildContext context){
                          return Login();
                        }),
                      );
                    }
                  else if(_groupValue==1)
                  {
                    AppData.sending_price=0.0;
                    AppData.sending_method="Walk in";

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context){
                        return Login();
                      }),
                    );
                  }
                  else if(_groupValue==2)
                  {
                    AppData.sending_method="Courier Collect";
                    AppData.sending_price=6.99;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context){
                        return Login();
                      }),
                    );
                  }
                  else if(_groupValue==3)
                  {
                    AppData.sending_method="Express";
                    AppData.sending_price=14.99;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context){
                        return Login();
                      }),
                    );
                  }
                  else
                    {
                      final snackBar = SnackBar(
                        content: const Text('Please Select One Option'),

                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }

                },
                child: Text(
                  "Continue to Payment",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      ),
    );
  }
}

