// void can't return value 

void main(){
  var result = plus(2, 8); // ->position argument
  print(result);

  dynamic dist = distribution(b: 5,a: 10); // -> name argument
  print(dist);

  dynamic multiply = multip(2, 3);
  print(multiply);
}

plus(value1, value2){
  int value;
  value = value1 + value2;
  return value;
}

distribution({a, b}){
  var z = a ~/ b;
  return z;
}

multip(c,d,[e]){
  if (e != null) {
    return c * d * e;
  }else{
    return c * d;
  }
}