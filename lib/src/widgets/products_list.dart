import 'package:flutter/material.dart';


class ProductsList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Popular Beats Products', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
          ),
          // Contenedor del listView
          Container(
            height: 70,
            width: double.infinity,
            child: ListView(
              children: [
                ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      child: Image(
                        image: AssetImage('assets/perfil-superman.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text('The Decade Collection', style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text('\$349.95', style: TextStyle(color: Colors.black26),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}