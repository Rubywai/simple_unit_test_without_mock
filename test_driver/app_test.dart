import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main(){
  group('Discount Integration test', (){
    FlutterDriver _flutterDriver;
    final _countEdt = find.byValueKey('countKey');
    final _priceEdt = find.byValueKey('priceKey');
    final _fab = find.byValueKey('btn');
    setUpAll(() async{
      _flutterDriver = await FlutterDriver.connect();
    });
    tearDownAll((){
      if(_flutterDriver!=null){
        _flutterDriver.close();
      }
    });
    test('integration test of Discount',() async{
      await _flutterDriver.tap(_countEdt);
      await _flutterDriver.enterText('12');
      await Future.delayed(Duration(seconds: 1));
      await _flutterDriver.tap(_priceEdt);
      await _flutterDriver.enterText('100');

      await Future.delayed(Duration(seconds: 1));

      await _flutterDriver.tap(_fab);

      await _flutterDriver.waitFor(find.text("840"),
          timeout: const Duration(seconds: 3));


    });

  });
}