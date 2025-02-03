import 'package:e_comarce/presentation/utils/list_api.dart';
import 'package:flutter/material.dart';
class CategoryProduct extends StatelessWidget {
  const CategoryProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ListApi.myList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 60,
                  width: 70,
                  decoration: BoxDecoration(
                      color: ListApi.myList[index]["color"],
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.network(ListApi.myList[index]["image"]),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                ListApi.myList[index]["name"],
                style: TextStyle(fontSize: 18),
              ),
            ],
          );
        },
      ),
    );
  }
}
