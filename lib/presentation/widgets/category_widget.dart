import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    this.filter = "",
    this.title = "",
    this.icon,
    this.height,
    this.wight,
    this.color,
  });

  final String? filter;
  final String? title;
  final IconData? icon;
  final double? height;
  final double? wight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title ?? "",
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: height ?? 0.0,
              width: wight ?? 0.0,
              decoration: BoxDecoration(
                border: Border.all(color: color ?? Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      filter ?? "",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 8),
                      Icon(
                        icon??null,
                        color: Colors.grey.shade500,
                      ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
