class Car {
  final int? id;
  final String name;
  final String brand;
  final int year;
  final String country;
  final String? vin;

  const Car(
      {this.id,
      required this.name,
      required this.brand,
      required this.year,
      required this.country,
      this.vin});

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
        id: json["id"],
        name: json["name"],
        brand: json["brand"],
        year: json["year"],
        country: json["country"],
        vin: json["vin"]);
  }
}
