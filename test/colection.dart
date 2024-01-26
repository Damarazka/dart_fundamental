void main() {
  /* List hewan = ["kucing", "burung", "cow", 18];
  print(hewan[2]);
  hewan.insert(2, "macan");
  print(hewan[2]);
  hewan.insert(4, "cacing");
  print(hewan[4]);
  hewan.add("babi");
  print(hewan);
  //hewan.addAll(["semut", "gajah", "lintah"]);
  hewan.insertAll(2, ["semut", "gajah", "lintah"]);
  print(hewan);
  hewan.remove("gajah");
  print(hewan);
  hewan.removeRange(1, 7);
  print(hewan);
  hewan.removeAt(1);
  print(hewan);

  List<String> rpl = ["azka", "azzam", "farrel"];
  List<String> tkj = ["azka", "azzam", "farrel"];

  var gabungan = [...rpl, ...tkj];
  print(gabungan); */

  //=====================// SET

  /* var name = {"Damarazka","azka"};
  var name1 = {"farrel","ahmad","azka"};

  var merge = {...name,...name1};
  print(merge);
  print(name.elementAt(1));

  var same = name.intersection(name1);
  print(same); */

  //==================// MAP

  var data = {
    "name" : "azka",
    "age" : 18,
    "major" :"RPL"
    };

  data.addEntries({"hobi":"renang"}.entries);
  data["address"] = "salatiga";
  print(data);
  print("${data["name"]} ${data["major"]}");
}