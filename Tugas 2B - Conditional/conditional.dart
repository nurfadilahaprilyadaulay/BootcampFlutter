//1. Ternary operator 
void main() {
  var jawaban = 'Y'; // Coba ganti 'Y' ke 'T' untuk melihat output berbeda
  if (jawaban == 'Y' || jawaban == 'y') {
    print("Anda akan menginstall aplikasi dart");
  } else if (jawaban == 'T' || jawaban == 't') {
    print("Aborted");
  } else {
    print("Input tidak valid");
  }
}


//2. If-else if dan else
void main() {
  var nama = "";
  var peran = "";
   if (nama == "") {
    print("Nama harus diisi!");
    }else if (peran == "") {
    print("apabila kosong semua Nama harus diisi!");
    }
}

void main() {
  var nama = "John";
  var peran = "";
   if (nama == "John") {
    print("Halo John");
    } else if (peran == "") {
    print("apabila cuman diisi nama akan muncul Halo John, Pilih peranmu untuk memulai game!");
   }
}

void main() {
  var nama = "Jane";
  var peran = "penyihir";
   if (nama == "Jane") {
    } else if (peran == "penyihir") {
    print("Selamat datang di Dunia Werewolf, Jane");
    print("Halo Penyihir Jane, kamu dapat melihat siapa yang menjadi werewolf!");
    }
}

void main() {
  var nama = "Janita";
  var peran = "Guard";
   if (nama == "Jenita") {
    } else if (peran == "Guard") {
    print("Selamat datang di Dunia Werewolf, Jenita");
    print("Halo Guard Jenita, kamu akan membantu melindungi temanmu dari serangan werewolf.");
    }
}

void main() {
  var nama = "Junaedi";
  var peran = "Werewolf";
   if (nama == "Junaedi") {
    } else if (peran == "Worewolf") {
    print("Selamat datang di Dunia Werewolf, Junaedi");
    print("Halo Werewolf Junaedi, Kamu akan memakan mangsa setiap malam!");
    }
}



//3. Switch case
void main() {
  var buttonPushed = 1;
  // Switch case untuk menampilkan quotes berdasarkan hari
  switch (buttonPushed) {
    case 1 :  {print("Senin : Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja."); break;}
    case 2 :  {print("Selasa : Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati."); break;}
    case 3 :  {print("Rabu : Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri."); break;}
    case 4 :  {print("Kamis : Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain."); break;}
    case 5 :  {print("Jumat : Hidup tak selamanya tentang pacar."); break;}
    case 6 :  {print("sabtu : Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan."); break;}
    case 7 :  {print("Minggu : Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani."); break;}
    default:  {print("Hari yang dimasukkan tidak valid. Masukkan hari yang benar (Senin - Minggu).");}}
}


//4. Switch Case
void main() {
  var tanggal = 9;  
  var bulan = 4;     
  var tahun = 2003;  

  if (tanggal < 1 || tanggal > 31) {
    print("Tanggal tidak valid.");
    return;
  }
  if (bulan < 1 || bulan > 12) {
    print("Bulan tidak valid.");
    return;
  }
  if (tahun < 1900 || tahun > 2200) {
    print("Tahun tidak valid.");
    return;
  }

  String namaBulan;
  switch (bulan) {
    case 1:
      namaBulan = "Januari";
      break;
    case 2:
      namaBulan = "Februari";
      break;
    case 3:
      namaBulan = "Maret";
      break;
    case 4:
      namaBulan = "April";
      break;
    case 5:
      namaBulan = "Mei";
      break;
    case 6:
      namaBulan = "Juni";
      break;
    case 7:
      namaBulan = "Juli";
      break;
    case 8:
      namaBulan = "Agustus";
      break;
    case 9:
      namaBulan = "September";
      break;
    case 10:
      namaBulan = "Oktober";
      break;
    case 11:
      namaBulan = "November";
      break;
    case 12:
      namaBulan = "Desember";
      break;
    default:
      namaBulan = "Bulan tidak valid";
  }
  print("$tanggal $namaBulan $tahun");
}

