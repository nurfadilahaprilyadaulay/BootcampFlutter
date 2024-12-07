class Titan {
  late double _powerPoint;

  void setPowerPoint(double value) {
    _powerPoint = value < 5 ? 5 : value;
  }

  double getPowerPoint() {
    return _powerPoint;
  }
}
