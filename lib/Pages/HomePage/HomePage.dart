import 'package:flutter/material.dart';
import '../../Models/product.dart'; // Importando a classe Product
import 'Components/categories.dart'; // Importando os widgets RectangularItem e SquareItem

class HomePage extends StatelessWidget {
  // Definindo a escala desejada para as imagens
  static const double imageScale = 0.15; // Reduzindo a escala da imagem

  // Lista de produtos
  final List<Product> products = [
    Product(name: 'Gaming', price: 100, imagePath: 'assets/gaming.png', description: 'Description for Product 1', category: 'Category 1'),
    Product(name: 'Celulares', price: 200, imagePath: 'assets/celular.png', description: 'Description for Product 2', category: 'Category 1'),
    Product(name: 'TVs', price: 150, imagePath: 'assets/tv.png', description: 'Description for Product 3', category: 'Category 2'),
    Product(name: 'Tablets', price: 250, imagePath: 'assets/tablet.png', description: 'Description for Product 4', category: 'Category 2'),
    Product(name: 'Som', price: 180, imagePath: 'assets/som.png', description: 'Description for Product 5', category: 'Category 2'),
    Product(name: 'Relógio', price: 300, imagePath: 'assets/relogio.png', description: 'Description for Product 6', category: 'Category 2'),
    // Adicione mais produtos conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    // Utilizando apenas os primeiros 6 produtos da lista
    List<Product> displayedProducts = products.take(6).toList();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.transparent,
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _buildSectionTitle('Section 1'),
                    SizedBox(height: 8), // Reduzindo o espaçamento entre os elementos
                    Row(
                      children: displayedProducts
                          .where((product) => product.category == 'Category 1')
                          .map((product) => RectangularItem(name: product.name, imagePath: product.imagePath))
                          .toList(),
                    ),
                    SizedBox(height: 8), // Reduzindo o espaçamento entre os elementos
                    Row(
                      children: [
                        for (var i = 0; i < displayedProducts.length; i++)
                          if (displayedProducts[i].category == 'Category 2')
                            ...[
                              SquareItem(
                                name: displayedProducts[i].name,
                                imagePath: displayedProducts[i].imagePath,
                                squareHeight: 80,
                                squareWidth: 60,
                              ),
                              if (i < displayedProducts.length - 1) SizedBox(width: 8), // Adicionando espaçamento entre os quadrados, exceto para o último
                            ],
                      ],
                    ),
                    SizedBox(height: 16), // Adicionando espaço extra no final da coluna
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
