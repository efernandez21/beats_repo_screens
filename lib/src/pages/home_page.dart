import 'package:beats/src/widgets/buy_button.dart';
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
                  CardsView(),
                ],
              ),
            ),
          ),
          BuyButton(
            color:Colors.redAccent, 
            text: 'Buy', 
            onTap: (){
              Navigator.pushNamed(context, 'product');
            },
          )
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

