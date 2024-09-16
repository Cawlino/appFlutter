import 'package:flutter/material.dart';
import '../models/car.dart';
import '../models/brand.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();
  String _model = '';
  String _year = '';
  String _brand = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Adicionar Carro')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Modelo'),
                onSaved: (value) {
                  _model = value ?? '';
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Ano'),
                onSaved: (value) {
                  _year = value ?? '';
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Marca'),
                onSaved: (value) {
                  _brand = value ?? '';
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Car newCar = Car(
                      model: _model,
                      year: _year,
                      brand: Brand(name: _brand),
                    );
                    Navigator.pop(context, newCar);
                  }
                },
                child: Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
