import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:test_practice/models/car.dart';

final carProvider = FutureProvider<List<Car>>((ref) async {
  final response =
      await http.get(Uri.parse('http://127.0.0.1:8000/api/v1/cars/'));

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((car) => Car.fromJson(car)).toList();
  } else {
    throw Exception('Failed to load cars');
  }
});

