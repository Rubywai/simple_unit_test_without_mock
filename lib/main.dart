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
  List<int> _priceList = [100,200,300,400,500];
  int _price = 100;
  num _totalPrice = 0;
  List<int> _countList = [3,5,7,9,10,15,18];
  int _count = 3;
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
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text('Choose Price'),
                 SizedBox(width: 50,),
                 DropdownButton<int>(
                   key: ValueKey('PriceDropDown'),
                   hint: Text('Choose Price'),
                   value: _price,
                   items: _priceList.map((price) {
                     return DropdownMenuItem<int>(
                       key: ValueKey(price),
                       child: Text('$price'),
                       value: price,
                     );
                   }
                   ).toList(),
                   onChanged: (value) {
                     setState(() {
                       _price = value;
                     });
                   },
                 )
               ],
             ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Count'),
                  SizedBox(width: 50,),
                  DropdownButton<int>(
                    key: ValueKey('CountDropdown'),
                    hint: Text('Count'),
                    value: _count,
                    items: _countList.map((count) {
                      return DropdownMenuItem<int>(
                        key: ValueKey(count),
                        child: Text('$count'),
                        value: count,
                      );
                    }
                    ).toList(),
                    onChanged: (value) {
                      setState(() {
                        _count = value;
                      });
                    },
                  )
                ],
              ),
              MaterialButton(
                child: Text('Calculate'),
                onPressed: (){
                  setState(() {
                    num price = eachPrice(_count,_price);
                    _totalPrice = totalPrice(_count, price);
                  });
                },
              ),
              Text('$_totalPrice'.trim())

            ],
          ),

      ),
    );
  }
}
