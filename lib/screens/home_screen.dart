import 'package:flutter/material.dart';
import 'list_screen.dart';
import 'form_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Carros à Venda')),
      body: Center(child: Text('Bem-vindo ao App de Vendas de Carros')),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Listagem de Carros'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ListScreen()));
              },
            ),
            ListTile(
              title: Text('Adicionar Carro'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FormScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
