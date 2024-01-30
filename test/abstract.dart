/* import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

void main() {
  // Mengatur URL gambar
  final String url = "https://example.com/image.png";

  // Menjalankan tugas asynchronous untuk mendownload gambar
  Future<void> downloadImage() async {
    // Mengirim permintaan ke server
    final HttpClient client = new HttpClient();
    final HttpResponse response = await client.get(url);

    // Menerima gambar dari server
    final Uint8List imageData = await response.contentAsBytes();

    // Menyimpan gambar ke penyimpanan lokal
    final File file = new File("image.png");
    file.writeAsBytes(imageData);
  }

  // Menjalankan tugas asynchronous
  downloadImage();

  // Menampilkan pesan
  print("Gambar sedang didownload...");
} */

/* // Mixin untuk cek tanggal lahir
mixin BirthdayChecker {
  late DateTime birthday;

  bool isBirthday() {
    return DateTime.now().month == birthday.month &&
        DateTime.now().day == birthday.day;
  }
}

// Mixin untuk menampilkan pesan
mixin Greeting {
  void sayHappyBirthday() {
    print("Selamat ulang tahun!");
  }
}

// Kelas utama aplikasi
class MyBirthdayCelebrator with BirthdayChecker, Greeting {
  MyBirthdayCelebrator();

  void checkBirthday() {
    if (isBirthday()) {
      sayHappyBirthday();
    } else {
      print("Hari ini bukan ulang tahunmu.");
    }
  }
}

// Penggunaan
void main() {
  MyBirthdayCelebrator celebrator = MyBirthdayCelebrator(
      DateTime(2024, 01, 30)); // Ulang tahun di tanggal 30 Januari
  celebrator.checkBirthday(); // Check saat ini (30 Januari)
} */
