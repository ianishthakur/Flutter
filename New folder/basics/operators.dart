main() {
  ///arthematic operators: +, - , * ,  / ,  % ,
  ///Logical operators: == , && , || , ! , > , < , <= , >=

  int length = 100;
  int breadth = 50;
  int parimeter = length + length + breadth + breadth;
  print("The perimeter is [$parimeter]");

  int difference = length + breadth;
  print("The difference is : [$difference]");

  int area = (length - breadth);
  print("The area is : [$area] ");

  num division = length / breadth;

  //Logical
  var equal = 10 == 100;
  var negation = 10 != 100;
  var grater = 1000 > 50;
  var less = 100 < 1000;

  //ternary operator
  // Is Short cut form of if-else

  // condition?-------:************
  // length == 100 ? length + 100 : length - 100;
  length == 100 ? print("length is 100") : print("length is not 100");

  ///Null realted operators:?? , ?. , ? something!
  //var a =null;
  int? something;
  // something =1000;
  // something = something ?? 11;

  if (something != null) {
    int random = something + 100;
    //int random = something! +100;
  }
  //int = Never null
  // int? = can be null
}
