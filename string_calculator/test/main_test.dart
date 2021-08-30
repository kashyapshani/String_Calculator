import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator/main.dart';

void main(){
  test('String Empty',(){
    final obj = String_calc();
    int val = obj.Add("");
    expect(val,0);
  });
}