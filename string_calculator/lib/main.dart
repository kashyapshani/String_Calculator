
class String_calc {

  int calc(String delimiter, String input) {
    int sum = 0, num_tmp;
    try {
      List<String> num = input.split(delimiter);
      print(num);
      for (int i = 0; i < num.length; i++) {
        num_tmp = int.parse(num[i]);
        sum = sum + num_tmp;
      }
    }
    catch (e) {
      print(e);
    }
    return sum;
  }

  int Add(String numbers) {
    int num_tmp;
    String input = numbers.replaceAll("\n", ",");
    if (input.isEmpty) {
      return 0;
    }
    else if (input.length == 1) {
      num_tmp = int.parse(input);
      return num_tmp;
    }
    else if (input.startsWith("//")) {
      int sdl_index = input.indexOf("//") + 2;
      int edl_index = input.indexOf(",");
      String delimiter = input.substring(sdl_index, edl_index);
      String new_input = input.substring(input.indexOf(",") + 1);
      int res = calc(delimiter,new_input);
      return res;
    }
    else if (input.contains(",")) {
      String delimiter = ",";
      int res = calc(delimiter, input);
      return res;
    }
    return 0;
  }
}

void main(){
  String s = "1,2,3";
  String_calc sc = new String_calc();
  int res = sc.Add(s);
  print(res);
}