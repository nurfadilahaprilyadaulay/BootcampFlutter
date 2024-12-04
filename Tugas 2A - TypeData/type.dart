//A. Tugas String
//1. Soal No. 1 (Membuat kalimat)
void main() {
  var word = 'dart';
  var second = 'is';
  var third = 'awesome';
  var fourth = 'and';
  var fifth = 'I';
  var sixth = 'love';
  var seventh = 'it!'; 
  
  print (word + " " + second+ " " + third + " " + fourth+ " " + fifth + " " + sixth + " " +seventh);
}

//2. Soal No.2 Mengurai kalimat (Akses karakter dalam string)
void main() {
  var sentence = "I am going to be Flutter Developer";
  var exampleFirstWord = sentence[0]; // "I"
  var exampleSecondWord = sentence[2] + sentence[3]; // "am"
  var exampleThirdWord = sentence[5] + sentence[6] + sentence[7] + sentence[8] + sentence[9]; // "going"
  var exampleFourthWord = sentence[11] + sentence[12]; // "to"
  var exampleFifthWord = sentence[14] + sentence[15]; // "be"
  var exampleSixthWord = sentence[17] + sentence[18] + sentence[19] + sentence[20] + sentence[21] + sentence[22] + sentence[23]; // "Flutter"
  var exampleSeventhWord = sentence[24] + sentence[25] + sentence[26] + sentence[27] + sentence[28] + sentence[29] + sentence[30] + sentence[31] + sentence[32] + sentence[33]; // "Developer"

  print('First Word: ' + exampleFirstWord);
  print('Second Word: ' + exampleSecondWord);
  print('Third Word: ' + exampleThirdWord);
  print('Fourth Word: ' + exampleFourthWord);
  print('Fifth Word: ' + exampleFifthWord);
  print('Sixth Word: ' + exampleSixthWord);
  print('Seventh Word: ' + exampleSeventhWord);
}

//3. Dengan menggunakan I/O pada dart buatlah input dinamis yang akan menginput nama depan dan belakang dan jika di enter akan menggabungkan nama depan dan belakang
void main() {
  var firstname = " Nur Fadilah";
  var lastname = " Aprilya Daulay";
  print("Nama lengkap saya: " + firstname + " " + lastname);
}
//4. Dengan menggunakan operator operasikan variable berikut ini menjadi bentuk operasi perkalian, penjumlahan, pengurangan dan pembagian a = 5,  b = 10 jadi misal a * b = 5 * 10 = 50 dst.
void main() {
  int a = 20;
  int b = 2;

  int perkalian = a * b;
  double pembagian = a / b;
  int penambahan = a + b;
  int pengurangan = a - b;

  print('perkalian : $perkalian');
  print('pembagian : $pembagian');
  print('penambahan : $penambahan');
  print('pengurangan : $pengurangan');
}

