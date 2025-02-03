import 'package:flutter/material.dart';
import 'package:e_comarce/presentation/utils/list_api.dart';

class FavriedWidget extends StatefulWidget {
  final int index;

  const FavriedWidget({super.key, required this.index});

  @override
  State<FavriedWidget> createState() => _FavriedWidgetState();
}

class _FavriedWidgetState extends State<FavriedWidget> {
  bool isFavired = false;

  @override
  Widget build(BuildContext context) {
    final product = ListApi.myList[widget.index];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${product["name"]}.......${product["productCode"]}",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "${product["price"]} ( 219 people buy this )",
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              setState(() {
                isFavired = !isFavired;
              });
            },
            icon: Icon(
              isFavired ? Icons.favorite : Icons.favorite_border_rounded,
              color: isFavired ? Colors.red : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
