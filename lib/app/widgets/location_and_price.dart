import 'package:flutter/material.dart';
import 'package:travel_ui/app/core/constants/colors.dart';

class LocationAndPrice extends StatelessWidget {
  const LocationAndPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Tanjung Aan",
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 14),
            ),
            SizedBox(height: 5),
            Text(
              "Pujut, Lombok Tengah",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  color: greyDark),
            )
          ],
        ),
        Container(
          height: 38,
          width: 58,
          decoration: BoxDecoration(
              color: const Color.fromARGB(238, 239, 244, 255),
              borderRadius: BorderRadius.circular(6)),
          child: const Center(
              child: Text(
            "\$230",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: primary),
          )),
        )
      ],
    );
  }
}
