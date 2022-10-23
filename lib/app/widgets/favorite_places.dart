import 'package:flutter/material.dart';
import 'package:travel_ui/app/widgets/location_and_price.dart';

class FavoritePlaces extends StatelessWidget {
  const FavoritePlaces({Key? key, required this.width, required this.index})
      : super(key: key);

  final double width;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(width: width, height: 280),
      Container(
        width: width,
        height: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                fit: BoxFit.fill,
                image: index % 2 != 0
                    ? const AssetImage("assets/images/Rectangle-6.png")
                    : const AssetImage("assets/images/Rectangle-5.png"))),
      ),
      Positioned(
          bottom: 0,
          height: 60,
          right: 42.5,
          width: width * 0.7,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  offset: const Offset(0, 4),
                  blurRadius: 15,
                ),
              ],
            ),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: LocationAndPrice(),
            ),
          ))
    ]);
  }
}
