void main() {
  dataHandling(input);
}

var input = [
  ['0001', 'Roman Alamsyah', 'Bandar Lampung', '21/05/1989', 'Membaca'],
  ['0002', 'Dika Sembiring', 'Medan', '10/10/1992', 'Bermain Gitar'],
  ['0003', 'Winona', 'Ambon', '25/12/1965', 'Memasak'],
  ['0004', 'Bintang Senjaya', 'Martapura', '6/04/1970', 'Berkebun']
];

void dataHandling(List<List<String>> data) {
  for (var person in data) {
    print('ID: ${person[0]}, Nama: ${person[1]}, Kota: ${person[2]}, Tanggal Lahir: ${person[3]}, Hobi: ${person[4]}');
  }
}
