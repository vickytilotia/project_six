import 'package:flutter/material.dart';
import 'products.dart';
//class FirstScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    this.context = context;
//
//    return Scaffold(
//      appBar: AppBar(
//        centerTitle: true,
//        backgroundColor: Colors.white,
//        title: Text(
//          "PRODUCT LIST",
//          style: TextStyle(
//            color: Colors.black,
//          ),
//        ),
//      ),
//      body: _buildProductsListPage()  ,
//    );
//  }
//}



class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstScreenState();
  }
}

class _FirstScreenState extends State<FirstScreen> {
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    _products.add('Laptop');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: Scaffold(
            appBar: AppBar(title: Text('Long List App')),
            body: Column(children: [
              Container(
                  margin: EdgeInsets.all(10.0),
                  child: RaisedButton(
                      color: Theme.of(context).primaryColor,
                      splashColor: Colors.blueGrey,
                      textColor: Colors.white,
                      onPressed: () {
                        setState(() {
                          _products.add('Laptop');
                        });
                      },
                      child: Text('ADD'))),
              Expanded(child: Products(_products))
            ])));
  }
}
