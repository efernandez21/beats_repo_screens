import 'package:beats/src/widgets/buy_button.dart';
import 'package:beats/src/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';


class ProductPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  // Widgets que trabajaremos de la pantalla principal
                  // _Header(),
                  // Widget que contiene el CardView
                  // CardsView()
                ],
              ),
            ),
          ),
          BuyButton(
            color:Color(0xff08399B),
            text: 'Pay now',
            onTap: (){
              Navigator.pushNamed(context, 'home');
            },
            sizeButton: 0.3,
          )
        ],
      )
    );
  }
}