import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Widget Botton para comprar
class BuyButton extends StatelessWidget {
  // Parametros finales del widget para reutilizar
  final String text;
  final Color color;
  final Function onTap;

  BuyButton({
    this.text = 'Buy', 
    this.color = Colors.pink, 
    @required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    // Obteniendo propiedad del mediaquery
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        this.onTap();
      },
      child: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    this.text,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    FontAwesomeIcons.arrowRight,
                    color: Colors.white,
                  )
                ],
              ),
              height: 75,
              width: size.width * 0.3,
              decoration: BoxDecoration(
                  color: this.color,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(50.0))),
            ),
          )
        ],
      ),
    );
  }
}
