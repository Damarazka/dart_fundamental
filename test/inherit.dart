class Animal{
  String? name;
  int? age;
  double? weight;
  String? sound;

  Animal({this.name,this.age,this.weight,this.sound});

  eat(double foodWeight){
    weight = weight! + foodWeight;
  }
}

class Dog extends Animal{
  String? type;

  Dog({this.type,String? name,int? age,double? weight,String? sound}):super(
    name: name,
    age: age,
    weight: weight,
    sound: sound,
  );
}

void main(){
    var dog = Dog(name: "Hayabusa",type: "Shiba Inu",weight: 7,age: 4,sound: "Auuuuuu");

  print("Name of my dog is ${dog.name}");
  print("age of my dog is ${dog.age} years old");
  print("weight of my dog is ${dog.weight} kg");
  print("type of my dog is ${dog.type}");


  dog.eat(0.7);

  print("weight of my dog after ate is ${dog.weight}");
}