import 'package:flutter/material.dart';
import 'package:travel_ui/app/core/constants/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 14,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Container(
                width: 87,
                decoration: BoxDecoration(
                    color: primary, borderRadius: BorderRadius.circular(8)),
                child: Center(
                    child: Text(
                  categories[index],
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                )),
              ),
            );
          }
          return Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Container(
              width: 87,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: greyDark)),
              child: Center(
                child: Text(
                  categories[index],
                  style: const TextStyle(
                      color: greyDark,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

List categories = [
  "Camping",
  "Mountain",
  "Climbing",
  "Swimming",
  "Vacation",
  "Business",
  "Honeymoon",
  "Camping",
  "Mountain",
  "Climbing",
  "Swimming",
  "Vacation",
  "Business",
  "Honeymoon"
];
