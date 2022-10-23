import 'package:flutter/material.dart';
import 'package:travel_ui/app/core/constants/colors.dart';

class DetailHeader extends StatelessWidget {
  const DetailHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.5),
              color: secondary),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Center(
                child: Icon(
              Icons.arrow_back,
            )),
          ),
        ),
        const Text(
          "Details",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.5),
              color: secondary),
          child: const Center(
            child: Icon(
              Icons.more_horiz_rounded,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}
