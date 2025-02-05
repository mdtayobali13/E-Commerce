import 'package:e_comarce/presentation/screens/product_screen.dart';
import 'package:e_comarce/presentation/utils/list_api.dart';
import 'package:e_comarce/presentation/widgets/category_widget.dart';
import 'package:e_comarce/presentation/widgets/recent_product.dart';
import 'package:e_comarce/presentation/widgets/search_box_widget.dart';
import 'package:flutter/material.dart';

class SearchViewScreen extends StatefulWidget {
  const SearchViewScreen({super.key});

  @override
  State<SearchViewScreen> createState() => _SearchViewScreenState();
}

class _SearchViewScreenState extends State<SearchViewScreen> {
  ListApi my = new ListApi();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ProductScreen(),
                          ),
                        );
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                    SizedBox(
                      width: 280,
                      child: SearchBoxWidgets(title: "Search..."),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_cart_outlined),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                CategoryWidget(
                  title: "Seaarch product",
                  height: 40,
                  wight: 110,
                  color: Colors.grey.shade500,
                  filter: "Filters",
                  icon: Icons.filter_alt_outlined,
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: MediaQuery.of(context).size.width,
                  child: RecentProduct(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
