void main(){
  int nilai = 40;

  if (nilai > 0 && nilai < 25) {
    print("lulus");
  } else if(nilai > 0 && nilai < 50){
    print("ga lulus");
  } else {
    print("tidak lulus");
  }



  //=======================//


int nilai1 = 10;
int nilai2 = 90;
String operator = "+";

  switch (operator) {
    case "+":
      print("$nilai1 + $nilai2");
    case "-":
      print("$nilai1 - $nilai2");
      break;
      default:
      print("nilai tidak valid");
  }
}