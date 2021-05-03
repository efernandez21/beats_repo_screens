import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:beats/src/widgets/custom_appbar.dart';
import 'package:beats/src/widgets/cards_view.dart';
import 'package:beats/src/widgets/fondo_circular.dart';



class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FondoCircular(),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  _Header(),
                  // Widget que contiene el CardView
                  CardsView()
                ],
              ),
            ),
          ),
          BuyButton()
        ],
      )
    );
  }
}
// Widget para el Header luego del appbar
class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40,),
          Text('Beats', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),),
          Text('by Dre', style: TextStyle(fontWeight: FontWeight.w100, fontSize: 18.0))
        ],
      ),
    );
  }
}

// Widget Botton para comprar
class BuyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obteniendo propiedad del mediaquery
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context,'product');
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
                  Text('Buy', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),),
                  SizedBox(width: 5.0,),
                  Icon(FontAwesomeIcons.arrowRight, color: Colors.white,)
                ],
              ),
              height: 75,
              width: size.width * 0.3,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0))
              ),
            ),
          )
        ],
      ),
    );
  }
}