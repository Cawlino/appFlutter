import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../lib/main.dart';
import '../lib/screens/home_screen.dart';

void main() {
  testWidgets('Teste inicial do widget HomeScreen', (WidgetTester tester) async {
    // Constroi o app e exibe o primeiro frame.
    await tester.pumpWidget(MyApp());

    // Verifica se a tela inicial tem o texto "Bem-vindo ao App de Vendas de Carros".
    expect(find.text('Bem-vindo ao App de Vendas de Carros'), findsOneWidget);
    expect(find.text('Outro texto'), findsNothing);
  });

  testWidgets('Teste de navegação para a ListScreen', (WidgetTester tester) async {
    // Constroi o app e exibe o primeiro frame.
    await tester.pumpWidget(MyApp());

    // Abre o menu (Drawer)
    final Finder drawerIcon = find.byTooltip('Open navigation menu');
    await tester.tap(drawerIcon);
    await tester.pumpAndSettle();

    // Clica no item de menu "Listagem de Carros".
    await tester.tap(find.text('Listagem de Carros'));
    await tester.pumpAndSettle();

    // Verifica se foi navegado para a tela correta (ListScreen).
    expect(find.text('Lista de Carros'), findsOneWidget);
  });

  testWidgets('Teste de navegação para o FormScreen', (WidgetTester tester) async {
    // Constroi o app e exibe o primeiro frame.
    await tester.pumpWidget(MyApp());

    // Abre o menu (Drawer)
    final Finder drawerIcon = find.byTooltip('Open navigation menu');
    await tester.tap(drawerIcon);
    await tester.pumpAndSettle();

    // Clica no item de menu "Adicionar Carro".
    await tester.tap(find.text('Adicionar Carro'));
    await tester.pumpAndSettle();

    // Verifica se foi navegado para a tela correta (FormScreen).
    expect(find.text('Adicionar Carro'), findsOneWidget);
  });
}
