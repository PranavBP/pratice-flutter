import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_practice/models/car.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

final carPostProvider = Provider((ref) => CarPostService());

class CarPostService {
  Future<void> addCar(Car car) async {
    final response = await http.post(
      Uri.parse('http://127.0.0.1:8000/api/v1/cars/'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'name': car.name,
        'brand': car.brand,
        'year': car.year,
        'country': car.country,
        'vin': car.vin,
      }),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to add car');
    }
  }
}
