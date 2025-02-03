import 'package:e_comarce/presentation/screens/product_screen.dart';
import 'package:flutter/material.dart';

class Ecomarces extends StatefulWidget {
  const Ecomarces({super.key});

  @override
  State<Ecomarces> createState() => _EcomarcesState();
}

class _EcomarcesState extends State<Ecomarces> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 0,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 8
          ),
        ),
      ),
      home: ProductScreen(),
    );
  }
}
