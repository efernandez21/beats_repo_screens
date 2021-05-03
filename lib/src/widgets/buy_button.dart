import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Widget Botton para comprar
class BuyButton extends StatelessWidget {
  // Parametros finales del widget para reutilizar
  final String text;
  final Color color;
  final Function onTap;
  final double sizeButton;

  BuyButton({
    this.text = 'Buy', 
    this.color = Colors.pink, 
    @required this.onTap, 
    this.sizeButton = 0.3
  });

  @override
  Widget build(BuildContext context) {
    // Obteniendo propiedad del mediaquery
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: ButtonTheme(
            minWidth: size.width * this.sizeButton,
            height: 75,
            child: RaisedButton(
              color: this.color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50))
              ),
              onPressed: (){
                this.onTap();
              },
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
                width: size.width * this.sizeButton,
              ),
            ),
          ),
        )
      ],
    );
  }
}
