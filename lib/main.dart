import 'package:beats/src/pages/home_page.dart';
import 'package:beats/src/providers/productos_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Creacion del provider general
        ChangeNotifierProvider(create: (_) => new ProductosProvider(),)
      ],
      child: MaterialApp(
        title: 'Beats App',
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        // home: HomePage(),
        routes: {
          'home': (BuildContext context) => HomePage(),
        },
      ),
    );
  }
}