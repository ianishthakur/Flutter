main() {
  //implicit/indirect type inference
  var students = [
    "Anish",
    1,
    2,
    [1, 2, 3]
  ];
  students = [1, 2, 3];

  //0,1,2,....n
  List<int> rollNumber = [99, 2, 45, 100, 200, 300];
  //position/index 0,1,2,3,4,5

  var someValue = rollNumber[5];
  print(someValue);

  List<String> cars = ["tata", "ferrari"];
  //

  List<int> roll = [12, 13];

  // // roll = roll[1];
  // roll = 13;

  var value = roll[1];

  print(value);
  //Key-Value Pair
  //Collection of key value pair

  Map<dynamic, dynamic> user = {
    "id": 234,
    "name": "Ram Prasad",
    "date_of_birth": "1997",
    "salary": [
      1,
      2,
      3,
      4,
    ],
    1: 2
  };

  var dob = user["date_of_birth"];
  print(dob);

  Set<int> noDuplicate = {1, 2, 31, 3, 4, 5, 3, 1};
  print("noDuplicate");
}
