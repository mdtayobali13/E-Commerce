import 'package:e_comarce/presentation/screens/main_bottom_nab_bar.dart';
import 'package:e_comarce/presentation/widgets/custom_banner.dart';
import 'package:e_comarce/presentation/widgets/recent_product.dart';
import 'package:e_comarce/presentation/widgets/search_box_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/category_widget.dart';
import '../widgets/categriy_product.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Delivery address",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Row(
                          children: [
                            Text(
                              "Palatial City , Control java",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_drop_down_sharp)
                          ],
                        ),
                      ],
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.shopping_cart_checkout),
                          SizedBox(width: 10),
                          Icon(Icons.notification_add_outlined)
                        ],
                      ),
                    )
                  ],
                ),
                SearchBoxWidgets(
                  title: 'Search here...',
                ),
                SizedBox(height: 15),
                CustomBanner(),
                CategoryWidget(title: "Category"),
                CategoryProduct(),
                CategoryWidget(
                  title: "Recent Product",
                  height: 40,
                  wight: 110,
                  color: Colors.grey.shade500,
                  filter: "Filters",
                  icon: Icons.filter_alt_outlined,
                ),
                SizedBox(height: 15),
                RecentProduct(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: MainBottomNabBar(),
    );
  }
}
