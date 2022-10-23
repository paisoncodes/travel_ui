import 'package:flutter/material.dart';
import 'package:travel_ui/app/core/constants/colors.dart';

class DetailBottomNav extends StatelessWidget {
  const DetailBottomNav({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: const Offset(6, -8),
            blurRadius: 15, // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Total Price",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: greyDark),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: const [
                    Text(
                      "\$230",
                      style: TextStyle(color: primary, fontSize: 20),
                    ),
                    Text(
                      "/person",
                      style: TextStyle(color: greyDark, fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
            Container(
              height: 40,
              width: 95,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: primary),
              child: const Center(
                  child: Text(
                "Order Now",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              )),
            )
          ],
        ),
      ),
    );
  }
}
