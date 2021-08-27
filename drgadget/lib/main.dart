import 'package:drgadget/cetegory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
       runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Index(),
    ));}

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          title: Row(
            children: [
              Container(
                child: Image.asset(
                  'assets/drg.png',
                  width: 130,
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
      body:SingleChildScrollView(
      child:Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, top: 6),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check_circle,
                  color: Colors.lightBlue,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 30),
                child: Text(
                  "Fast Repair Service",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 48, top: 8),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check_circle,
                  color: Colors.lightBlue,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 60),
                child: Text(
                  "Original Parts",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, top: 6),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check_circle,
                  color: Colors.lightBlue,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 30),
                child: Text(
                  "6 Months Warranty",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 50, top: 8),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check_circle,
                  color: Colors.lightBlue,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 63),
                child: Text(
                  "No Fix No Fee",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, top: 6),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check_circle,
                  color: Colors.lightBlue,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 30),
                child: Text(
                  "Best Price Guarantee",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 37, top: 8),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check_circle,
                  color: Colors.lightBlue,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 50),
                child: Text(
                  "Free Postage",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 10),
            child: RaisedButton(
                color: Colors.lightBlue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return StaticDropDown();
                    }),
                  );
                },
                child: Text(
                  "Book Instant Repair",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                )),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Divider(
              color: Colors.black26,
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20, left: 40),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return StaticDropDown();
                      }),
                    );
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.lightBlue,
                        ),
                        child: Center(
                            child: Image.asset(
                          'assets/repair.png',
                          width: 80,
                          height: 80,
                        )),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 8),
                        child: Text(
                          "Book Your \n   Repair",
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 60),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.lightBlue,
                      ),
                      child: Center(
                          child: Image.asset(
                        'assets/gift.png',
                        width: 35,
                        height: 35,
                      )),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        "  Walk In Or  \nSent It To Us",
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 50),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.lightBlue,
                      ),
                      child: Center(
                          child: Image.asset(
                        'assets/van.png',
                        width: 40,
                        height: 40,
                      )),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        "Quick Fix & \n   Return",
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Container(
                  child: Text(
                    "Offering High Quality Repair Services",
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    "At Best Price",
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20, left: 40),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                      ),
                      child: ClipOval(
                          child: Image.asset(
                        'assets/repair1.jpeg',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      )),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        "Iphone \n Repair",
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 60),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                      ),
                      child: ClipOval(
                          child: Image.asset(
                        'assets/iPad.png',
                        width: 35,
                        height: 35,
                      )),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        "iPad Repair",
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 50),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                      ),
                      child: ClipOval(
                          child: Image.asset(
                        'assets/repair2.jpeg',
                        width: 40,
                        height: 40,
                      )),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        "Samsung \n Repair",
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.lightBlue,
                      ),
                      child: ClipOval(
                          child: Image.asset(
                        'assets/repair3.jpeg',
                        width: 80,
                        height: 80,
                      )),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        "Liquid Damage \n     Repair",
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 40),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                      ),
                      child: ClipOval(
                          child: Image.asset(
                        'assets/repair5.jpeg',
                        width: 35,
                        height: 35,
                      )),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        "Sony Repair",
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 50),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.lightBlue,
                      ),
                      child: ClipOval(
                          child: Image.asset(
                        'assets/repair6.jpeg',
                        width: 40,
                        height: 40,
                      )),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        "Other Phone\n    Repair",
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      ),
      backgroundColor: Colors.white,

    );
  }
}
