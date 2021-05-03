import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'package:beats/src/models/producto_model.dart';
import 'package:beats/src/providers/productos_provider.dart';

class CardsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Cargando la instancia global del provider
    final productosProvider = Provider.of<ProductosProvider>(context);
    // El height indica el cargo de este container general, si no se coloca el tomara el ancho dado por la tarjeta
    return Container(
      width: double.infinity,
      height: 420.0,
      child: PageView(
        physics: BouncingScrollPhysics(),
        pageSnapping: false,
        controller: PageController(viewportFraction: 0.8),
        // children: [
        //   _Card(),
        //   _Card(),
        // ],
        children: productosProvider.productos.map((prod) => _Card(prod)).toList(),
      ),
    );
  }
}

//Widget Card que trabaja la tarjeta de forma independiente
class _Card extends StatelessWidget {
  // Propiedades para personalizar los productos
  final ProductoModel prod;

  _Card(this.prod);

  @override
  Widget build(BuildContext context) {
    // Este Stack contiene los elementos de la tarjeta que esta dividida en dos partes la descripcion y la parte visual de la tarjeta junto con el Auricular
    return Container(
      // color: Colors.red,
      child: Stack(
        children: [
          // El row junta las dos partes de la tarjeta
          Row(
            children: [
              _PrimeraDescripcion(prod),
              SizedBox(
                width: 55.0,
              ),
              // Card que contiene un tamaño determinado
              _TarjetaDescripcion(prod),
            ],
          ),
          // Imagen del producto en el positioned en el stack
          Positioned(
            top: 90,
            left: 50,
            child: Image(
              image: AssetImage('assets/${prod.url}'),
              width: 160.0,
            ),
          )
        ],
      ),
    );
  }
}

// Widget usado para la descripcion
class _PrimeraDescripcion extends StatelessWidget {
  final ProductoModel prod;

  _PrimeraDescripcion(this.prod);

  @override
  Widget build(BuildContext context) {
    // Usamos el rotatedbox para  rotar el elemento row
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, ),
      child: RotatedBox(
        quarterTurns: 3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.batteryFull,
              size: 15,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              '${prod.bateria}-Hour Battery',
              style: TextStyle(fontSize: 12.0),
            ),
            SizedBox(
              width: 30.0,
            ),
            Icon(
              FontAwesomeIcons.wifi,
              size: 15,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Wireless',
              style: TextStyle(fontSize: 12.0),
            )
          ],
        ),
      ),
    );
  }
}

// Widget de la descripcion de la tarjeta
class _TarjetaDescripcion extends StatelessWidget {
  final ProductoModel prod;

  _TarjetaDescripcion(this.prod);
  @override
  Widget build(BuildContext context) {
    // media query para calcular ancho de la tarjeta
    final size = MediaQuery.of(context).size;
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Container(
          width: size.width * 0.55,
          height: 340,
          color: Color(prod.color),
          child: Column(
            children: [
              SizedBox(
                height: 25.0,
              ),
              //  Ubicacion de los textos de Warriors
              RotatedBox(
                quarterTurns: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      prod.titulo,
                      style: TextStyle(
                          color: Colors.white24,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      prod.subtitulo,
                      style: TextStyle(
                          color: Colors.white24,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Spacer(),
              // Agregacion del texto y el icono inferior
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      prod.nombre,
                      style: TextStyle(color: Colors.white),
                    ),
                    Spacer(),
                    Icon(
                      FontAwesomeIcons.heart,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              // Elementos final tarjeta
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Text(
                      '\$${prod.precio}',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    width: 80,
                  ),
                  // Ubicacion del boton de agregar a la bolsa
                  Container(
                    child: Center(
                      child: Text(
                        'Add to bag',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    width: 120.0,
                    height: 45.0,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(30))),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
