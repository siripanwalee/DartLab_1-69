class Temperature {
  double _celsius;

  Temperature(this._celsius);

  double get celsius => _celsius;

  set celsius(double? value) {
  if (value != null && value >= -273.15) {
    _celsius = value;
  } else {
    print("Invalid temperature");
  }
}

  double get fahrenheit => (_celsius * 9 / 5) + 32;
}

void main() {
  Temperature temp = Temperature(25.0);

  print("Celsius: ${temp.celsius}");
  print("Fahrenheit: ${temp.fahrenheit}");

  temp.celsius = -300.0; // Invalid value
  print("Celsius after invalid set: ${temp.celsius}");
}