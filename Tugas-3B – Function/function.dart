// No 1
void main(){
  print(teriak());
}

teriak(){
  return "Halo Sanbers!";
}

// No 2
kalikan(a, b) {  
  return a * b; 
}

void main() {
  var num1 = 12; 
  var num2 = 4;  
  
  var hasilKali = kalikan(num1, num2); 
  print(hasilKali); 
}

// No 3
introduce(name, age, address, hobby) { 
  return 'Nama saya $name, umur saya $age tahun, alamat saya di $address, dan saya punya hobby yaitu $hobby!'; // Mengembalikan kalimat perkenalan
}

void main() {
  var name = "Agus"; 
  var age = 30;      
  var address = "Jln. Malioboro, Yogyakarta"; 
  var hobby = "Gaming"; 
  
  var perkenalan = introduce(name, age, address, hobby); 
  print(perkenalan); 
}

// No 4
int faktorial(int n) {
  if (n <= 0) {
    return 1; 
  } else {
    int hasil = 1;
    for (int i = n; i > 0; i--) {
      hasil *= i;
    }
    return hasil;
  }
}

void main() {
  var angka = 6;
  var hasilFaktorial = faktorial(angka);
  print('Faktorial dari $angka! adalah $hasilFaktorial');
}
