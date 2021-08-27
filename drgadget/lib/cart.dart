
import 'package:drgadget/data.dart';
import 'package:drgadget/model.dart';
import 'package:drgadget/payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:drgadget/cetegory.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import 'main.dart';
class Cart2 extends StatefulWidget {

  @override
  _Cart2State createState() => _Cart2State();
}

class _Cart2State extends State<Cart2> {
  DataSource dataSource;
  @override
  void initState(){
    super.initState();

    dataSource = DataSource(mycart: AppData.cartList);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        child:Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 15),
              child: Center(
                child: Text('Your Cart', style:
                TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,

                ),),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              height: 400,
              child: SfDataGrid(
                source: dataSource,
                onQueryRowHeight: (details){
                  return details.getIntrinsicRowHeight(details.rowIndex);
                },
                columns: <GridColumn>[

                  GridColumn(
                      columnName: 'Brand',
                      label: Container(
                          padding: EdgeInsets.all(5.0),
                          alignment: Alignment.center,
                          child: Text(
                            'Brand',
                          ))),

                  GridColumn(
                      columnName: 'Model',
                      label: Container(
                          padding: EdgeInsets.all(16.0),
                          alignment: Alignment.center,
                          child: Text('Model'))),
                  GridColumn(
                      columnName: 'Fault',
                      label: Container(
                          padding: EdgeInsets.all(16.0),
                          alignment: Alignment.center,
                          child: Text('Fault'))),
                  GridColumn(
                      columnName: 'Cost',
                      label: Container(
                          padding: EdgeInsets.all(16.0),
                          alignment: Alignment.center,
                          child: Text('Cost'))),
                  GridColumn(
                      columnName: 'Delete',
                      label: Container(
                          padding: EdgeInsets.all(5.0),
                          alignment: Alignment.center,
                          child: Text(
                            'Delete',
                          ))),
                  /*GridColumn(
                      columnName: 'cost',
                      label: Container(
                          padding: EdgeInsets.all(16.0),
                          alignment: Alignment.centerRight,
                          child: Text('Cost'))),*/
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 3,
            ),
            Row(
              children:[ Container(
                width: 180,
                padding: EdgeInsets.only(top: 20,left: 20),
                child: Text("Total",style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),),
              ),

            Container(
              width: 180,
              padding: EdgeInsets.only(top: 20,left: 100),
              child: Text(AppData.totalCost.toString()+r"$",style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),),
            ),
            ],
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context){
                    return StaticDropDown();
                  }),
                );
              },
              child: Container(
                padding: EdgeInsets.only(top: 20),
                child: Text("<< Add More Repairs",style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 70, right: 70),
              child: SizedBox(
                width: 200,
                height: 45,
                child: RaisedButton(

                  color: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context){
                        return Payment2();
                      }),
                    );
                  },
                  child: Text(
                    "Proceed to Checkout",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}


class DataSource extends DataGridSource {
     DataSource({List<Cart1> mycart}) {
    _mycart = mycart
        .map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<String>(columnName: 'Brand', value: e.brand),
      DataGridCell<String>(columnName: 'Model', value: e.model),
      DataGridCell<String>(
          columnName: 'Fault', value: e.fault),
      DataGridCell<dynamic>(columnName: 'Cost', value: e.cost),
      DataGridCell<String>(columnName: 'Delete', value: ""),


    ]))
        .toList();
  }
 void delete(){

 }
  List<DataGridRow>  _mycart = [];

  @override
  List<DataGridRow> get rows =>  _mycart;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: [

          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(row.getCells()[0].value),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(row.getCells()[1].value.toString()),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(row.getCells()[2].value.toString()),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(row.getCells()[3].value.toString()),
          ),
          Container(

              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child:  Icon(Icons.delete_forever_rounded)),

        ]);
  }
  }
