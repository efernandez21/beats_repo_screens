import 'package:beats/src/widgets/buy_button.dart';
import 'package:beats/src/widgets/products_list.dart';
import 'package:flutter/material.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              _Header(),
              // // Widget que contiene el CardView
              CardsView(),
              // Widget texto Popular Beats Products
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                height: 25,
                child: Text('Popular Beats Products', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
              ),
              // SizedBox(height: 5,),
              Expanded(child: ProductsList()),
            ],
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: BuyButton(
              color:Colors.redAccent, 
              text: 'Buy', 
              onTap: (){
                Navigator.pushNamed(context, 'product');
              },
              sizeButton: 0.25,
            ),
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
          SizedBox(height: 5,),
          Text('Beats', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),),
          Text('by Dre', style: TextStyle(fontWeight: FontWeight.w100, fontSize: 18.0))
        ],
      ),
    );
  }
}

