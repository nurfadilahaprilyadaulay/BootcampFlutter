// 1 Looping While
void main() {
  // Looping Pertama
  print('LOOPING PERTAMA');
  int i = 2;
  while (i <= 20) {
    print('$i - I love coding');
    i += 2; // Menambah 2 setiap iterasi
  }

  // Looping Kedua
  print('LOOPING KEDUA');
  int j = 20;
  while (j >= 2) {
    print('$j - I will become a mobile developer');
    j -= 2; // Mengurangi 2 setiap iterasi
  }
}

// 2 Looping menggunakan for
void main() {
  for (var i = 1; i <= 20; i++) {
    var output; // Deklarasi variabel output

    if (i % 3 == 0 && i % 2 != 0) {
      output = i.toString() + " - I Love Coding";
    } else if (i % 2 == 0) {
      output = i.toString() + " - Berkualitas";
    } else {
      output = i.toString() + " - Santai";
    }

    print(output); // Mencetak output
  }
}

// 3 Membuat Persegi Panjang #
void main() {
  for (var i = 0; i < 4; i++) { // Loop untuk 4 baris
    var row = ''; // Variabel untuk menyimpan satu baris
    for (var j = 0; j < 8; j++) { // Loop untuk 8 kolom
      row += '#'; // Menambahkan '#' ke variabel row
    }
    print(row); // Mencetak satu baris
  }
}

// 4 Membuat Tangga 
void main() {
  var i = 1; // Inisialisasi tinggi segitiga
  while (i <= 7) { // Loop untuk tinggi segitiga
    var row = ''; // Variabel untuk menyimpan satu baris
    var j = 1; // Inisialisasi kolom
    while (j <= i) { // Loop untuk mencetak '#' sesuai dengan baris
      row += '#'; // Menambahkan '#' ke variabel row
      j++;
    }
    print(row); // Mencetak satu baris
    i++;
  }
}