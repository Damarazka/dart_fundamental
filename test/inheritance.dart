class Animal{
  String? name;
  int? age;
  double? weight;

  Animal({this.name, this.age,this.weight});

  eat(double foodWeight){
    weight = weight! + foodWeight;
  }
}

class Cat extends Animal{
  int? leg;

  Cat({String? name, int? age,double? weight,this.leg}):super(name: name,age: age,weight: weight);

  sound(){
    print("makan gua bang");
  }
}


void main(){

  var cat1 = Cat(name: "Moghly", age: 2,weight: 5,leg: 4,);

  print("Name of my cat is ${cat1.name}");
  print("age of my cat is ${cat1.age} years old");
  print("weight of my cat is ${cat1.weight} kg");
  print("have ${cat1.leg} legs");
}
