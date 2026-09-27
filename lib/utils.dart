import 'vehicle.dart';

double totalOperationalCost(List<Vehicle> vehicles) {
  double total = 0;
  for (var v in vehicles) {
    total += v.calculateOperationalCost();
  }
  return total;
}

Vehicle mostExpensiveVehicle(List<Vehicle> vehicles) {
  Vehicle mostExpensive = vehicles.first;
  for (var v in vehicles) {
    if (v.calculateOperationalCost() > mostExpensive.calculateOperationalCost()) {
      mostExpensive = v;
    }
  }
  return mostExpensive;
}
