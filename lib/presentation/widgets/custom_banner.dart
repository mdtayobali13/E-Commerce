import 'package:e_comarce/presentation/utils/app_colors.dart';
import 'package:e_comarce/presentation/utils/list_api.dart';
import 'package:flutter/material.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ListApi.myList.length,
        itemBuilder: (context, index) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                  color:ListApi.myList[index]['color'],
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade100,
                      blurRadius: 5,
                      offset: Offset(4, 4),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 195,
              top: 10,
              child: Row(
                children: [
                  Image.asset("assets/Ellipse.png"),
                ],
              ),
            ),
            Positioned(
              left: 180,

              child: Image.network(ListApi.myList[index]["image"],height: 170,width: 180,)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "SALE",
                    style: TextStyle(fontSize: 20, color: AppColors.sliderColor,),
                  ),
                  Text(
                    "UPTO",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white,),
                  ),
                  Row(
                    children: [
                      Text(
                        "${ListApi.myList[index]['discount']}",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: AppColors.sliderColor,
                        ),
                      ),
                      Text(
                        "OFF",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        );
      },),
    );
  }
}
