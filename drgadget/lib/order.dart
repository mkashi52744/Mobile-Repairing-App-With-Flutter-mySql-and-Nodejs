import 'package:drgadget/data.dart';
import 'package:flutter/material.dart';

import 'main.dart';
class Method3 extends StatefulWidget {


  @override
  _Method3State createState() => _Method3State();
}

class _Method3State extends State<Method3> {
  int _groupValue = -1;
  dynamic total=AppData.totalCost+AppData.sending_price;


  @override
  void initState() {
    super.initState();
  }
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        "Payment Method",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "All Transaction are secure and encrypted credit card information not stored",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
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
                              'assets/paypal2.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Text(
                                  " Pay",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xFF1842C2),
                                  ),
                                ),
                                Text(
                                  " Pal",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.lightBlue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
                                value: 1,
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
                              'assets/card.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "Debit/Credit Card",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
                                value: 2,
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
                              'assets/cash.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "Cash on Repair",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
                              'assets/bank.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "Bank Transfer",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Divider(
                  color: Colors.black26,
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.only(top: 10, left: 20),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text(
                                  "Sub Total      ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              child: Container(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  AppData.sending_method,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                           Container(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "VAT                ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),

                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.only(top: 10, left: 200),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  AppData.totalCost.toString()+r"$",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                padding: EdgeInsets.only(top: 10,left:10),
                                child: Text(AppData.sending_price.toString()+r"$",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                padding: EdgeInsets.only(top: 10,right: 6),
                                child: Text(
                                  r"0$",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Divider(
                  color: Colors.black26,
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Total",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 250),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        total.toString()+r"$",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 60, bottom: 0),
                child: InkWell(
                  onTap: () {
                  },
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff6bceff),
                            Color(0xFF00abff),
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Center(
                      child: Text(
                        'Complete Order',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
