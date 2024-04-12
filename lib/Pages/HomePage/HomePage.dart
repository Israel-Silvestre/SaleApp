import 'package:flutter/material.dart';

import 'Components/categories.dart';

class HomePage extends StatelessWidget {
  // Definindo a escala desejada para as imagens
  static const double imageScale = 0.15; // Reduzindo a escala da imagem

  @override
  Widget build(BuildContext context) {
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
                      children: [
                        RectangularItem(title: 'Gaming', imagePath: 'assets/gaming.png'),
                        SizedBox(width: 8), // Reduzindo o espaçamento entre os elementos
                        RectangularItem(title: 'Celulares', imagePath: 'assets/celular.png'),
                      ],
                    ),
                    SizedBox(height: 8), // Reduzindo o espaçamento entre os elementos
                    Row(
                      children: [
                        SquareItem(title: 'Item 3', imagePath: 'assets/gaming.png'),
                        SizedBox(width: 8), // Reduzindo o espaçamento entre os elementos
                        SquareItem(title: 'Item 4', imagePath: 'assets/gaming.png'),
                        SizedBox(width: 8), // Reduzindo o espaçamento entre os elementos
                        SquareItem(title: 'Item 5', imagePath: 'assets/gaming.png'),
                        SizedBox(width: 8), // Reduzindo o espaçamento entre os elementos
                        SquareItem(title: 'Item 6', imagePath: 'assets/gaming.png'),
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
