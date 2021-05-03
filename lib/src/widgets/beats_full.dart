import 'package:flutter/material.dart';


class BeatsFull extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3, vertical:  5 ),
      child: Container(
        width: double.infinity,
        height: 390,
        decoration: BoxDecoration(
          color: Color(0xff08399B),
          borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  topLeft: Radius.circular(30)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Zapato con su sombra
            _Header(),
            // Widget Imagen y controles
            ImageControls()

            // Elementos de las tallas de los zapatos, podemos eliminarlo en caso de usarlo en otra pantalla con el if como tipo spread
            
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5,),
          Text('Beats', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0),),
          Text('Warriors Royal Blue', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w100, fontSize: 18.0))
        ],
      ),
    );
  }
}
// WWidget que contiene la imagen y los controles
class ImageControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Row contiene la imagen y los controles
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          width: 250,
          child: Image(
            image: AssetImage('assets/blue.png'),
            fit: BoxFit.contain,
          ),
        ),
        Spacer(),
        // Widget de los botones
        _ColumnaBotones(),
        SizedBox(width: 25,)
      ],
    );
  }
}
// Widget que contiene la columna de botones de seleccion de cantidad de dispositivos
class _ColumnaBotones extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: 60,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: 2,),
          Container(
            padding: EdgeInsets.all(7),
            child: Icon(Icons.add, size: 30,color: Colors.white,),
            decoration: BoxDecoration(
              color: Color(0xff08399B),
              borderRadius: BorderRadius.circular(15)
            ),
          ),
          Text('2', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          Container(
            padding: EdgeInsets.all(7),
            child: Icon(Icons.remove, size: 30,color: Color(0xff08399B),),
            decoration: BoxDecoration(
              // color: Color(0xff08399B),
              borderRadius: BorderRadius.circular(15)
            ),
          ),
          // IconButton(
          //   padding: EdgeInsets.symmetric(horizontal: 8),
          //   icon: Icon(Icons.remove, size: 30,),
          //   onPressed: (){

          //   },
          // ),
          SizedBox(height: 5,)
        ],
      ),
    );
  }
}


// // Widget que contiene los zapatos con sombra
// class _ZapatoConSombra extends StatelessWidget {
//   // Añadiremos el zapato con sombra dentro de un stack
//   @override
//   Widget build(BuildContext context) {
//     // Provider
//     final zapatoModel = Provider.of<ZapatoModel>(context);
//     // Introducimos el stack dentro de un padding para reducir el tamaño de sus elementos internos
//     return Padding(
//       padding: EdgeInsets.all(50.0),
//       child: Stack(
//         children: [
//           // Positioned para ubicar la sombra
//           Positioned(
//             bottom: 9,
//             right: 0,
//             child: _ZapatoSombra(),
//           ),

//           Image(
//             image: AssetImage(zapatoModel.assetImage),
//           )
//         ],
//       ),
//     );
//   }
// }

// // Widget con la sombra de los zapatos
// class _ZapatoSombra extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Transform.rotate(
//       angle: -0.5,
//       child: Container(
//         width: 230,
//         height: 130,
//         decoration:
//             BoxDecoration(borderRadius: BorderRadius.circular(100), boxShadow: [
//           // Colocamos el color que queremos que tenga la sombra esperada del elemento
//           BoxShadow(color: Color(0xffEAA14E), blurRadius: 40)
//         ]),
//       ),
//     );
//   }
// }

