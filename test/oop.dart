class Manusia{
  late String name;
  late int? age;
  late double? weight;

  Manusia({required this.name, this.age, this.weight});
  makan(double valueEat){
    weight = weight! + valueEat;
  }

  tidur(double minusWg){
    weight = weight! - minusWg;
  }
}


void main(){
  /* var manusia1 = Manusia(name : "Ahoha",age : 18, weight : 94);
  print("Name : ${manusia1.name}");
  print("Age : ${manusia1.age}");
  print("Weight : ${manusia1.weight}");

  manusia1.makan(1);
  print("berat setelah makan ${manusia1.weight}");

  manusia1.tidur(2);
  print("berat setelah tidur ${manusia1.weight}");

  print("========================");

  var manusia2 = Manusia(name : "Azka",age:  18, weight : 75);
  print("Name : ${manusia2.name}");
  print("Age : ${manusia2.age}");
  print("Weight : ${manusia2.weight}"); */
}