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
