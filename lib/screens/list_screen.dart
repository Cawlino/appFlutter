import 'package:flutter/material.dart';
import '../models/car.dart';
import '../models/brand.dart';

class ListScreen extends StatelessWidget {
  final List<Car> cars = [
    Car(model: 'Civic', year: '2021', brand: Brand(name: 'Honda')),
    Car(model: 'Corolla', year: '2020', brand: Brand(name: 'Toyota')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Carros')),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${cars[index].model} (${cars[index].year})'),
            subtitle: Text(cars[index].brand.name),
          );
        },
      ),
    );
  }
}
