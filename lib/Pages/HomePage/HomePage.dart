import 'package:flutter/material.dart';

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
                        _buildRectangularItem(context, 'Gaming', 'assets/gaming.png'),
                        SizedBox(width: 8), // Reduzindo o espaçamento entre os elementos
                        _buildRectangularItem(context, 'Celulares', 'assets/celular.png'),
                      ],
                    ),
                    SizedBox(height: 8), // Reduzindo o espaçamento entre os elementos
                    Row(
                      children: [
                        _buildSquareItem(context, 'Item 3', 'assets/gaming.png'),
                        SizedBox(width: 8), // Reduzindo o espaçamento entre os elementos
                        _buildSquareItem(context, 'Item 4', 'assets/gaming.png'),
                        SizedBox(width: 8), // Reduzindo o espaçamento entre os elementos
                        _buildSquareItem(context, 'Item 5', 'assets/gaming.png'),
                        SizedBox(width: 8), // Reduzindo o espaçamento entre os elementos
                        _buildSquareItem(context, 'Item 6', 'assets/gaming.png'),
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

  Widget _buildRectangularItem(BuildContext context, String title, String imagePath) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: 4), // Margem à direita para criar espaço entre a imagem e o retângulo
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            // Retângulo branco
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            // Imagem alinhada à direita
            Align(
              alignment: Alignment.centerRight,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagePath,
                  height: 70, // Altura da imagem com base na escala
                  width: 80, // Largura da imagem com base na escala
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Texto centralizado à esquerda
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  textAlign: TextAlign.center, // Centralizando o texto
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Cor do texto
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSquareItem(BuildContext context, String title, String imagePath) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            // Retângulo branco
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            // Imagem
            Padding(
              padding: const EdgeInsets.all(4), // Adicionando margem interna ao redor da imagem
              child: Align(
                alignment: Alignment.topCenter,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imagePath,
                    height: 60, // Altura da imagem com base na escala
                    width: 60, // Largura da imagem com base na escala
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // Texto abaixo da imagem
            Positioned(
              bottom: 4, // Posicionando o texto na parte inferior do quadrado
              left: 0, // Alinhando o texto à esquerda
              right: 0, // Alinhando o texto à direita
              child: Text(
                title,
                textAlign: TextAlign.center, // Centralizando o texto
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Cor do texto
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
