import 'package:e_comarce/presentation/utils/list_api.dart';
import 'package:e_comarce/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FllowWidget extends StatefulWidget {
  const FllowWidget({super.key, required this.index});
  final int index;
  @override
  State<FllowWidget> createState() => _FllowWidgetState();
}

class _FllowWidgetState extends State<FllowWidget> {
  @override
  Widget build(BuildContext context) {
    final product = ListApi.myList[widget.index];
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${product['name']}----${product['productCode']}",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "${product['price']} (219 people buy this )",
          ),
          Divider(color: Colors.grey),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.network(
                      product['logo'],
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    product["name"],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              CustomButton(
                buttonWidth: 100,
                buttonHeight: 40,
                buttonText: "Follow",
                onTap: () {},
              )
            ],
          ),
          Divider(color: Colors.grey),
        ],
      ),
    );
  }
}
