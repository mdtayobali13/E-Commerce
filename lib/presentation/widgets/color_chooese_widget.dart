import 'package:flutter/material.dart';

class ColorChooseWidget extends StatefulWidget {
  const ColorChooseWidget({
    super.key,
  });

  @override
  State<ColorChooseWidget> createState() => _ColorChooseWidgetState();
}

List<Map<String, Color>> ColorsList = [
  {"Color": Color(0xffF5E3DF)},
  {"Color": Color(0xffECECEC)},
  {"Color": Color(0xffE4F2DF)},
  {"Color": Color(0xffD5E0ED)},
  {"Color": Color(0xff3E3D40)},
];

class _ColorChooseWidgetState extends State<ColorChooseWidget> {
  List<bool> _isSelectedList = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 40,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: ColorsList.length,
          itemBuilder: (context, index) {
            final color = ColorsList[index]['Color']!;
            return GestureDetector(
              onTap: () {
                setState(() {
                  _isSelectedList[index] = !_isSelectedList[index];
                });
              },
              child: Card(
                elevation: 4,
                child: Container(
                  width: 45,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 3,
                      color: _isSelectedList[index]
                          ? Colors.white
                          : Colors.transparent,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
