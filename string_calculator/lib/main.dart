
class String_calc{

  int Add(String numbers) {
    int sum = 0,num_tmp;
    String input = numbers.replaceAll("\n",",");
    if (input.isEmpty) {
      return 0;
    }
    else if (input.length == 1) {
      num_tmp = int.parse(input);
      return num_tmp;
    }
    else if (input.contains(",")) {
      try {
        List<String> num = input.split(",");
        print(num);
        for (int i = 0; i < num.length; i++) {
          num_tmp = int.parse(num[i]);
          sum = sum + num_tmp;
        }
      }
      catch (e) {
        print(e);
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