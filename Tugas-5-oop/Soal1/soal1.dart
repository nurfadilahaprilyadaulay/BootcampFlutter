class Segitiga {
  double alas;
  double tinggi;

  // Constructor untuk menginisialisasi alas dan tinggi
  Segitiga(this.alas, this.tinggi);

  // Method untuk menghitung luas segitiga
  double hitungLuas() {
    return 0.5 * alas * tinggi;
  }
}

void main(List<String> arguments) {
  // Membuat objek Segitiga dengan alas 20.0 dan tinggi 30.0
  var segitiga = Segitiga(20.0, 30.0);
  
  // Menghitung luas segitiga
  var luas = segitiga.hitungLuas();
  
  // Menampilkan hasil
  print('Luas segitiga adalah $luas');
}