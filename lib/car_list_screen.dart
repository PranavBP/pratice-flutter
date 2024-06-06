import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_practice/provider/car_provider.dart';

class CarListScreen extends ConsumerWidget {
  const CarListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final carAsyncValue = ref.watch(carProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Car List'),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/add-car");
              },
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ))
        ],
      ),
      body: carAsyncValue.when(
        data: (cars) => ListView.builder(
          itemCount: cars.length,
          itemBuilder: (context, index) {
            final car = cars[index];
            return ListTile(
              title: Text(car.name),
              subtitle: Text('${car.country} - ${car.year}'),
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
