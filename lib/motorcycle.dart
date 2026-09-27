import 'vehicle.dart';
import 'maintenance.dart';

class Motorcycle extends Vehicle with Maintenance {
  String motorcycleType;
  int engineCapacity;

  Motorcycle({
    required String brand,
    required String model,
    required int year,
    required this.motorcycleType,
    required this.engineCapacity,
  }) : super(brand, model, year);

  @override
  double calculateOperationalCost() {
    return 75000 + (engineCapacity * 100);
  }

  @override
  void displayInfo() {
    print('--- Motorcycle Info ---');
    print('Brand             : $brand');
    print('Model             : $model');
    print('Year              : $year');
    print('Motorcycle Type   : $motorcycleType');
    print('Engine Capacity   : $engineCapacity cc');
  }
}
