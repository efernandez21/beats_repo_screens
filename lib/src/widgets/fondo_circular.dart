import 'package:flutter/material.dart';

// Widget que contiene el fondo circular
class FondoCircular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Referencia al tamaño de la pantalla disponible que usaremos para construir el circulo
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Positioned(
          right: -(size.width) * 1.1,
          top: -(size.width) * 0.4,
          child: Container(
            width: size.height * 0.80,
            height: size.height * 0.80,
            decoration: BoxDecoration(
              color: Color.fromRGBO(239, 239, 239, 1.0),
              // shape: BoxShape.circle
              borderRadius: BorderRadius.circular(2000.0)
            ),
          ),
        )
      ],
    );
  }
}