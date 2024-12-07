class Lingkaran {
  late double _luas;

  set luas(double value) {
    if (value < 0) {
      value *= -1; 
    }
    _luas = value;
  }

  double get luas => _luas;

  double hitungLuas() {
    return 3.14 * _luas * _luas;
  }
}
