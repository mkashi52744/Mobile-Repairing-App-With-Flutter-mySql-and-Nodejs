import 'dart:convert';
import 'dart:ui';

import 'package:drgadget/cart.dart';
import 'package:drgadget/model.dart';
import 'package:drgadget/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'main.dart';

class StaticDropDown extends StatefulWidget {

  @override
  _StaticDropDownState createState() => _StaticDropDownState();
}

class _StaticDropDownState extends State<StaticDropDown> {
  var b_id;
  var m_id;
  var f_id;
  dynamic price;
  List <String> brands = [];
  List<String> applemodels = [];
  List<String> sumsungmodels = [];
  List<String> googlemodels = [];
  List<String> nokiamodels = [];
  List<String> sonymodels = [];
  List<String> lgmodels = [];
  List<String> huaweimodels = [];
  List<String> htcmodels = [];
  List<String> motorolamodels = [];
  List<String> blackbarrymodels = [];
  List<String> sonyericsonmodels = [];

  List<String> repairlist = [];
  Future<List<Brand>> getbrands() async {
    var data = await http.get(
        Uri.http("192.168.18.126:3000","users"));

    var jsonData = json.decode(data.body);
    List<Brand> users = [];
    for (var u in jsonData) {
      Brand user = Brand(u["manufacturer_id"],u["name"], u["alias"], u["title"]);
      users.add(user);
      brands.add(user.name);
    }

    print(brands);

    return users;

  }
  Future<List<Model>> getmodels() async {
    var data = await http.get(
        Uri.http("192.168.18.126:3000","models"));

    var jsonData = json.decode(data.body);
    List<Model> models = [];
    for (var u in jsonData) {
      Model model = Model(u["product_id"],u["manufacturer_id"],u["group_id"], u["device_id"], u["product_name"]);
      models.add(model);
      setState(() {

        if(model.manufacturer_id==1)
        {
          if(applemodels.length<=35) {
            applemodels.add(model.product_name);
          }
        }
        else if(model.manufacturer_id==2)
        {
          if(sumsungmodels.length<=70) {
            sumsungmodels.add(model.product_name);
          }
        }
        else if(model.manufacturer_id==3)
        {
          if(googlemodels.length<=4) {
            googlemodels.add(model.product_name);
          }
        }else if(model.manufacturer_id==4)
        {

          if(nokiamodels.length<=28) {
            nokiamodels.add(model.product_name);
          }
        }else if(model.manufacturer_id==5)
        {
          if(sonymodels.length<=14) {
            sonymodels.add(model.product_name);
          }
        }else if(model.manufacturer_id==6)
        {
          if(lgmodels.length<=16) {
            lgmodels.add(model.product_name);
          }
        }else if(model.manufacturer_id==7)
        {
          if(huaweimodels.length<=1) {
            huaweimodels.add(model.product_name);
          }
        }else if(model.manufacturer_id==8)
        {
          if(htcmodels.length<=21) {
            htcmodels.add(model.product_name);
          }
        }else if(model.manufacturer_id==9)
        {
          if(motorolamodels.length<=11) {
            motorolamodels.add(model.product_name);
          }
        }else if(model.manufacturer_id==10)
        {
          if(blackbarrymodels.length<=9) {
            blackbarrymodels.add(model.product_name);
          }
        }else if(model.manufacturer_id==11)
        {

          if(sonyericsonmodels.length<=0) {
            sonyericsonmodels.add(model.product_name);
          }
        }

      });

    }


    print(applemodels.length);

    return models;

  }
  Future<List<Repair>> getrepair() async {
    var data = await http.get(
        Uri.http("192.168.18.126:3000","fault"));
    var jsonData = json.decode(data.body);
    List<Repair> repairs = [];
    for (var u in jsonData) {
      Repair repair = Repair(u["fault_id"],u["fault_name"]);
      repairs.add(repair);
          repairlist.add(repair.fault_name);
    }
    print(repairlist);
    return repairs;
  }
  Future<List<Repair>> getrepairId(String fault_name) async {
    var data = await http.get(
        Uri.http("192.168.18.126:3000","fault/$fault_name"));
    var jsonData = json.decode(data.body);
    List<Repair> repairId = [];
    for (var u in jsonData) {
      Repair repair = Repair(u["fault_id"],u["fault_name"]);
      repairId.add(repair);
      f_id=repair.fault_id;
    }
    print(f_id);
    return repairId;
  }
  Future<List<Cost>> getcost(int b_id2,int m_id2,int f_id2) async {
    var data = await http.get(
        Uri.http("192.168.18.126:3000","getcost/$b_id2/$m_id2/$f_id2"));
    var jsonData = json.decode(data.body);
    List<Cost> cost1 = [];
    for (var u in jsonData) {
      Cost cost = Cost(u["price"]);
      cost1.add(cost);
      price=cost.cost;
    }
    print(price);
    return cost1;
  }
  Future<List<Brand>> getbrandId(String b_name) async {
    var data = await http.get(
        Uri.http("192.168.18.126:3000","getbrand/$b_name"));
    var jsonData = json.decode(data.body);
    List<Brand> modelId = [];
    for (var u in jsonData) {
      Brand model = Brand(u["manufacturer_id"],u["name"], u["alias"], u["title"]);
      modelId.add(model);
      b_id=model.id;
    }
    print(b_id);
    return modelId;
  }

  Future<List<Model>> getmodelId(String p_name) async {
    var data = await http.get(
        Uri.http("192.168.18.126:3000","getmodels/$p_name"));
    var jsonData = json.decode(data.body);
    List<Model> modelId = [];
    for (var u in jsonData) {
      Model model = Model(u["product_id"],u["manufacturer_id"],u["group_id"], u["device_id"], u["product_name"]);
      modelId.add(model);
      m_id=model.product_id;
    }
    print(m_id);
    return modelId;
  }
  
void addcart(String brand,String model,String fault,dynamic cost){
    final data=Cart1(brand:brand,model:model,fault:fault,cost: cost);
    setState(() {
      AppData.cartList.add(data);
      print(AppData.cartList);
    });

}

  @override
  void initState(){
    super.initState();
    getbrands();
    getrepair();
}
  //List<String> brands = ['Apple', 'Samsung', 'Google', 'Nokia'];

  List<String> models = [];
  List<String> repair = [];

  String selectedbrand;
  String selectedmodel;
  String selectedissue;
  String holder;
  String holder2;
  String holder3;

  double opacit=0.0;
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
        padding: EdgeInsets.all(20.0),
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              "Please select your device and the concerned repairs. Our expert engineers assure you a reliable repairing as soon as possible. We also offer 6 Months repairing warranty that means your repairing cost is 100% secure.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 30, top: 20),
            child: Center(
              child: Text(
                "Select Your Device",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Country Dropdown
          GestureDetector(
            onTap: (){
              setState(() {

              });
                      },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                    color: Colors.lightBlue,
                    style: BorderStyle.solid,
                    width: 0.80),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  hint: Text('Select Brand'),
                  value: selectedbrand,
                  isExpanded: true,
                  items: brands.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (brand) {
                    if (brand == 'Samsung') {
                      models = sumsungmodels;
                      repair=[];
                    } else if (brand == 'Apple') {
                      models = applemodels;
                      repair=[];
                    } else if (brand == 'Google') {
                      models = googlemodels;
                      repair=[];
                    } else if (brand == 'Nokia') {
                      models = nokiamodels;
                      repair=[];
                    }
                    else if (brand == 'Sony') {
                      models = sonymodels;
                      repair=[];
                    }
                    else if (brand == 'LG') {
                      models = lgmodels;
                      repair=[];
                    }
                    else if (brand == 'Huawei') {
                      models = huaweimodels;
                      repair=[];
                    }
                    else if (brand == 'HTC') {
                      models = htcmodels;
                      repair=[];
                    }
                    else if (brand == 'Motorola') {
                      models = motorolamodels;
                      repair=[];
                    }
                    else if (brand == 'Blackberry') {
                      models = blackbarrymodels;
                      repair=[];
                    }
                    else if (brand == 'Sony Ericsson') {
                      models = sonyericsonmodels;
                      repair=[];
                    }
                    else {
                      models = [];
                      repair=[];
                    }
                    setState(() {

                        getmodels();
                        holder = brand;
                        selectedmodel = null;
                        selectedissue = null;
                        selectedbrand = brand;
                        getbrandId(holder);

                    },);
                  },
                ),
              ),
            ),
          ),
          // Country Dropdown Ends here
          SizedBox(height: 60.0),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                  color: Colors.lightBlue,
                  style: BorderStyle.solid,
                  width: 0.80),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                hint: Text('Select Model'),
                value: selectedmodel,
                isExpanded: true,
                items: models.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),

                  );
                }).toList(),
                onChanged: (model) {
                  if(model==null)
                    {
                      repair=[];
                    }
                  else
                    {
                      repair=repairlist;
                    }
                  setState(() {
                    holder2=model;
                    selectedmodel = model;
                    selectedissue = null;
                    getmodelId(holder2);

                  });
                },
              ),
            ),
          ),

          SizedBox(height: 60.0),
          // Province Dropdown
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                  color: Colors.lightBlue,
                  style: BorderStyle.solid,
                  width: 0.80),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                hint: Text('Select Choose Repair'),
                value: selectedissue,
                isExpanded: true,
                items: repair.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (repair) async{
                  setState(() {
                    if(repair==null)
                    {
                      opacit=0.0;
                    }
                    else{
                      opacit=1.0;
                    holder3=repair;
                    selectedissue = repair;}
                    getrepairId(holder3);

                  }
                  );
                  }

              ),
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 60,left: 70,right: 70),
            child: Opacity(opacity: opacit,
              child: SizedBox(
              width: 150,
              height: 45,
              child: RaisedButton(

              color: Colors.lightBlue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              onPressed: () {
                  print(b_id);
                  print(m_id);
                  print(f_id);
                  print(price);
                  getcost(b_id, m_id, f_id);
                  showdialoge(context);
              },
              child: Text(
                "Add Repair",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ),
    ),
          ),
          /// Province Dropdown Ends here
        ],
      ),
    );

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
              child: Text('Sure to ADD !!', style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
            ),
            Padding(padding: EdgeInsets.only(top: 30.0)),
            Row(
              children: [
                Container(
                padding: EdgeInsets.only(top: 30, bottom: 0,left: 30),
                child: InkWell(
                  onTap: () {
                    AppData.totalCost+=price;
                    addcart(holder, holder2, holder3,price);
                    print(price);
                    print(AppData.totalCost);
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (BuildContext context){
                        return Cart2();
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
                      'Yes',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                    ),
                ),
              ),

            SizedBox(
              width: 25,
            ),
            Container(
              padding: EdgeInsets.only(top: 30, bottom: 0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
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
                      'No',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
                ],
            ),
          ],
        ),
      ),
    );
    showDialog(context: context, builder: (BuildContext context) => dialogbox);}
}
class Brand {
  final int id;
  final String name;
  final String email;
  final String password;
  Brand(this.id,this.name, this.email, this.password);

}
class Model {
  int product_id;
  int manufacturer_id;
  int group_id;
  int device_id;
  String product_name;

  Model(this.product_id,this.manufacturer_id, this.group_id, this.device_id,this.product_name);

}
class Repair {
  int fault_id;
  String fault_name;
  Repair(this.fault_id,this.fault_name);

}
class Cost{
  var cost;
  Cost(this.cost);
}



