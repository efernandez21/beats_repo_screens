import 'package:beats/src/models/producto_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:beats/src/providers/productos_provider.dart';


class ProductsList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<ProductosProvider>(context);
    // Tener en cuenta el padding por defecto del Listview puede resultar molesto
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 10),
      physics: BouncingScrollPhysics(),
      itemCount: productsProvider.productos.length,
      itemBuilder: (BuildContext context, int index) => ElementoLista(productsProvider.productos[index]),
      
    );
  }
}
// Widget que contiene cada elemento de la lista
class ElementoLista extends StatelessWidget {

  final ProductoModel prod;

  ElementoLista( this.prod) ;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: MiniaturaProducto(prod),
      title: Text(prod.nombre, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
      subtitle: Text('\$${prod.precio}', style: TextStyle(color: Colors.black26),),
      onTap: (){},
    );
  }
}
// Widget que contiene la miniatura del producto
class MiniaturaProducto extends StatelessWidget {

  final ProductoModel prod;

  MiniaturaProducto(this.prod);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        padding: EdgeInsets.all(5),
        color: Color(prod.color),
        width: 50.0,
        height: 50.0,
        child: Image(
          image: AssetImage('assets/${prod.url}'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

