abstract class Vehicle {
  String _brand;
  String _model;
  int _year;
  Vehicle(this._brand, this._model, int year) : _year = 1900 {
    this.year = year;
  }

  String get brand => _brand;
  String get model => _model;
  int get year => _year;

  set brand(String value) {
    if (value.isNotEmpty) {
      _brand = value;
    } else {
      print('Warning: brand cannot be empty. Value not changed.');
    }
  }

  set model(String value) {
    if (value.isNotEmpty) {
      _model = value;
    } else {
      print('Warning: model cannot be empty. Value not changed.');
    }
  }

  set year(int value) {
    if (value >= 1900) {
      _year = value;
    } else {
      print('Warning: invalid year (< 1900). Value not changed.');
    }
  }

  double calculateOperationalCost();
  void displayInfo();
}
