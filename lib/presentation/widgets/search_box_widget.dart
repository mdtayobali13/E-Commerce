import 'package:flutter/material.dart';

class SearchBoxWidgets extends StatelessWidget {
  const SearchBoxWidgets({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: title,
        prefixIcon: Icon(Icons.search),
      ),
    );
  }
}
