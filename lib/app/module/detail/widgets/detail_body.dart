import 'package:flutter/material.dart';
import 'package:travel_ui/app/core/constants/colors.dart';
import 'package:travel_ui/app/module/detail/widgets/detail_header.dart';
import 'package:travel_ui/app/module/detail/widgets/detail_image_and_location.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            DetailHeader(),
            SizedBox(
              height: 40,
            ),
            DetailImageAndLocation(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Description",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "The most beautiful beach in Lombok and the closest to Kuta. It's only 15 minutes ride by scooter on a paved road from Kuta.",
              style: TextStyle(fontSize: 12, color: greyDark, height: 1.4),
            )
          ],
        ),
      ),
    );
  }
}