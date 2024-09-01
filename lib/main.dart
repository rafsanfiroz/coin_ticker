
import 'package:flutter/material.dart';
import 'price_screen.dart';
    
    void main () => runApp(Myapp());

    class Myapp extends StatelessWidget {
      const Myapp({super.key});

      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          theme: ThemeData.dark().copyWith(
            primaryColor: Colors.blue,
            scaffoldBackgroundColor: Colors.white ,
       appBarTheme: AppBarTheme(
         color: Colors.blueAccent,
       )
          ),

          home: PriceScreen (),


        );
      }
    }
