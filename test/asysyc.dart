void main() async {
  // await utk menunggu data pertama keluar baru data setelahnya 
  // digunakan di function yang asynchronous akan tetapi ini 
  // berubah menjadi synchronous.
  await getOrder(7).then((status) {
    print("ini adalah status sukses");
    print(status);
  }).catchError((error){
    print("ini adalah status failed");
    print(error);
  });
  data1();
  data2();
}

data1(){
  print("data 1");
}

data2(){
  print("data 2");
}

Future<String> getOrder(int beli) {
  int stok = 5;

  return Future.delayed(Duration(seconds: 2), () {
    if (stok > beli) {
      return "barang tersedia";
    } else {
      throw "barang ga ada";
    }
  });
}
