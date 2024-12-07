import 'lingkaran.dart';

void main(List<String> args) {
  Lingkaran lingkaran = Lingkaran();

  lingkaran.luas = -7;

  print("luas: ${lingkaran.luas}");
  print("Luas Lingkaran: ${lingkaran.hitungLuas()}");
}
