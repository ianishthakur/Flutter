main() {
  String day = "Friday";

  print("Using if else");
  //if ,else/else if/switch

  if (day == "Sunday") {
    ///"s"&"S" is not same
  } else if (day == "monday") {
  } else if (day == "tuesday") {
  } else {
    ///
    print("today is Sunday");
  }
//if (true){}
//if(false){}
  if (day == "Saturday" || day == "Sunday") {
    print("Yay holiday");
  } else {
    print("Nay");
  }

  if (day == "Last day" && day == "Sunday") {}

//if (!(day != " Saturday")){} ---if not true| if not false
  if (day != " Saturday") {
    print("Not Holiday");
  }


  //Switch_Case
  //VAlue Cheak
  
  switch(day){
    case"sunday":
    print("Hello Sunday");
    break;
    case"monday":
    print("Not Hello Monday");
    break;

  default:
  print("This is default");
  
  
  }




}
