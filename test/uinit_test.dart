
import 'package:flutter_test/flutter_test.dart';
import 'package:testing/add_function.dart';
import 'package:testing/discount.dart';

void main(){

  group('group test', (){
    test('discount test greater than 5 items', (){
      num price = eachPrice(6, 100);
      expect(price, 80);
      num total = totalPrice(6, price);
      expect(total, 480);
    });

    test('discount test greater than 10 items', (){
      num price2 = eachPrice(12, 100);
      expect(price2, 70);

      num total = totalPrice(12, price2);
      expect(total, 840);

    });

  });



}