import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator/main.dart';

void main(){
  group('String input',(){
    test('Empty',(){
      final obj = String_calc();
      int val = obj.Add("");
      expect(val,0);
    });
    test('1 num',(){
      final obj = String_calc();
      int val = obj.Add("2");
      expect(val,2);
    });
    test('3 num',(){
      final obj = String_calc();
      int val = obj.Add("2,5,6");
      expect(val,13);
    });
  });
}