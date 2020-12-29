import 'package:flutter/material.dart';
import 'package:testing/discount.dart';

void main() {
  runApp(MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  TextEditingController _priceController = TextEditingController();
  TextEditingController _countController = TextEditingController();
  double _total = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Unit Testing Demo',),),
          body: Column(
            children: [
              Card(
                elevation: 8.0,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('20 % discount for more than 5 items and 30% discount for more than 10 items',
                  style: TextStyle(color: Colors.black,fontSize: 16),
                  textAlign: TextAlign.center,),
                ),
              ),
              TextField(
                key: Key('countKey'),
                controller: _countController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Count'
                ),
              ),
              TextField(
                key : Key('priceKey'),
                controller: _priceController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Price'
                ),
              ),
              RaisedButton(
                key: Key('btn'),
                child: Text('Calculate'),
                onPressed: (){
                  setState(() {
                     num _eachPrice = eachPrice(int.parse(_countController.text), int.parse(_priceController.text));
                    _total = totalPrice(int.parse(_countController.text), _eachPrice);

                  });
                },
              ),
              Text('${_total.ceil()}')


            ],
          ),

      ),
    );
  }
}
