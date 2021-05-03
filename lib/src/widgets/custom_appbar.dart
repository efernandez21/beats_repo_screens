import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


// AppBar customizado
class CustomAppBar extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      width: double.infinity,
      color: Colors.transparent,
      child: Row(
        children: [
          // Iconos pertenecientes al appBar 
          IconButton(
            icon: Icon(FontAwesomeIcons.arrowLeft),
            onPressed: (){

            },
          ),
          Spacer(),
          IconButton(
            icon: Icon(FontAwesomeIcons.search),
            onPressed: (){

            },
          ),
          Stack(
            children: [
              IconButton(
                icon: Icon(FontAwesomeIcons.shoppingBag),
                onPressed: (){},
              ),
              Container(
                width: 20.0,
                height: 20.0,
                child: Center(child: Text('1', style: TextStyle(color: Colors.white),)),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20.0),
                ),
              )
            ]
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.ellipsisV, size: 15.0,),
            onPressed: (){

            },
          ),
          ClipRRect(
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
          SizedBox(width: 15.0,)
        ],
      ),
    );
  }
}