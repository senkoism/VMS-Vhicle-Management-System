import 'package:vehicle_management_system/vehicle.dart';
import 'package:vehicle_management_system/car.dart';
import 'package:vehicle_management_system/motorcycle.dart';
import 'package:vehicle_management_system/maintenance.dart';
import 'package:vehicle_management_system/utils.dart';

void main() {
  // Create 2 Car objects
  Car car1 = Car(
    brand: 'Toyota',
    model: 'Avanza',
    year: 2022,
    seatCount: 7,
    fuelType: 'Gasoline',
  );

  Car car2 = Car(
    brand: 'Honda',
    model: 'HR-V',
    year: 2023,
    seatCount: 5,
    fuelType: 'Gasoline',
  );

  // Create 2 Motorcycle objects
  Motorcycle motorcycle1 = Motorcycle(
    brand: 'Honda',
    model: 'Vario',
    year: 2022,
    motorcycleType: 'Automatic',
    engineCapacity: 150,
  );

  Motorcycle motorcycle2 = Motorcycle(
    brand: 'Yamaha',
    model: 'NMAX',
    year: 2024,
    motorcycleType: 'Automatic',
    engineCapacity: 155,
  );

  List<Vehicle> vehicleList = [car1, car2, motorcycle1, motorcycle2];

  print('=== All Vehicle Data ===\n');

  for (var vehicle in vehicleList) {
    print('Operational Cost: \$${vehicle.calculateOperationalCost().toStringAsFixed(0)}');

    // Run the mixin's method if available.
    if (vehicle is Maintenance) {
      (vehicle as Maintenance).scheduleMaintenance();
    }

    print('----------------------------------------\n');
  }

  print('=== Setter Validation Test ===');
  car1.year = 1800; 
  print('car1 year after invalid set attempt: ${car1.year}\n');

  double total = totalOperationalCost(vehicleList);
  Vehicle mostExpensive = mostExpensiveVehicle(vehicleList);

  print('=== Summary ===');
  print('Total Operational Cost of All Vehicles: \$${total.toStringAsFixed(0)}');
  print('Vehicle with the Highest Operational Cost:');
  mostExpensive.displayInfo();
  print('Operational Cost: \$${mostExpensive.calculateOperationalCost().toStringAsFixed(0)}');
}
