
class String_calc{

  int Add(String numbers){
    int sum=0;
    String input = numbers;
    if(input.isEmpty){
        return 0;
    }
    else if(input.contains(",")){
      List<String> num = input.split(",");
      int num_tmp;
      print(num);
      for(int i = 0;i<num.length;i++){
          num_tmp = int.parse(num[i]);
          sum = sum + num_tmp;
      }
    }
    return sum;
  }
}

void main(){
  String s = "1,2,3";
  String_calc sc = new String_calc();
  int res = sc.Add(s);
  print(res);
}