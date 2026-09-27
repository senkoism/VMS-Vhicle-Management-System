import 'vehicle.dart';
import 'maintenance.dart';

class Car extends Vehicle with Maintenance {
  int seatCount;
  String fuelType;

  Car({
    required String brand,
    required String model,
    required int year,
    required this.seatCount,
    required this.fuelType,
  }) : super(brand, model, year);

  @override
  double calculateOperationalCost() {
    return 150000 + (seatCount * 25000);
  }

  @override
  void displayInfo() {
    print('--- Car Info ---');
    print('Brand       : $brand');
    print('Model       : $model');
    print('Year        : $year');
    print('Seat Count  : $seatCount');
    print('Fuel Type   : $fuelType');
  }
}
