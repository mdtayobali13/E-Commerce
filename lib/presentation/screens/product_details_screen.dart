import 'package:e_comarce/presentation/widgets/category_widget.dart';
import 'package:e_comarce/presentation/widgets/custom_button.dart';
import 'package:e_comarce/presentation/widgets/fllow_widget.dart';
import 'package:flutter/material.dart';
import 'package:e_comarce/presentation/utils/list_api.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.index});
  final int index;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  bool isFavired = false;

  @override
  Widget build(BuildContext context) {
    final product = ListApi.myList[widget.index];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                    Text(
                      "Product Details",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_cart_outlined),
                    ),
                  ],
                ),
                Hero(
                  tag: "product-${product['productCode']}",
                  child: Image.network(
                    product['image'],
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(
                        Icons.image_not_supported,
                        size: 50,
                        color: Colors.black,
                      );
                    },
                  ),
                ),
                FllowWidget(index: widget.index),
                CategoryWidget(title: "Description of product"),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet arcu id tincidunt tellus arcu rhoncus, turpis nisl sed. Neque viverra ipsum orci, morbi semper. Nulla bibendum purus tempor semper purus.Ut curabitur platea sed blandit. Amet non at proin justo nulla et.A, blandit morbi suspendisse vel malesuada purus massa mi.Faucibus neque a mi hendrerit.""",
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        buttonWidth: 150,
                        buttonHeight: 40,
                        buttonText: 'Add to Cart',
                        onTap: () {},
                      ),
                      SizedBox(width: 10),
                      CustomButton(
                        buttonWidth: 150,
                        buttonHeight: 40,
                        buttonText: 'Buy now',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
