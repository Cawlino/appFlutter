import 'package:flutter/material.dart';
import 'screens/home_screen.dart';  

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Venda de Carros',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),  // Certifique-se de que 'HomeScreen' esteja definido e importado corretamente
    );
  }
}
