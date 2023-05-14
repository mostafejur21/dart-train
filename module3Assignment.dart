class Car {
  static int numberOfCars = 0;
  late String brand;
  late String model;
  late int year;
  double milesDriven = 0;

  Car(this.brand, this.model, this.year) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    int currentYear = DateTime.now().year;
    return (currentYear - year);
  }
}

main() {
  Car car1 = Car("Tesla", "Model S", 2018);
  car1.drive(69.69);

  Car car2 = Car("Rolls royce", "Rolls royce Phantom", 2010);
  car2.drive(8989.69);

  Car car3 = Car("Audy", "Audy Q7", 2015);
  car3.drive(4444.0);

  print(
      "Car 1 details: \n Brand: ${car1.getBrand()}\t Model: ${car1.getModel()}\t Year: ${car1.getYear()} \n ${car1.getMilesDriven()}  miles driven, ${car1.getAge()} years old \n");
  print(
      "Car 2 details: \n Brand: ${car2.getBrand()}\t Model: ${car2.getModel()}\t Year: ${car2.getYear()}\n ${car2.getMilesDriven()}  miles driven, ${car2.getAge()} years old \n");
  print(
      "Car 3 details: \n Brand: ${car3.getBrand()}\t Model: ${car3.getModel()}\t Year: ${car3.getYear()} \n ${car3.getMilesDriven()}  miles driven, ${car3.getAge()} years old");

  print("Total numbers of cars : ${Car.numberOfCars}");
}
