import 'package:flutter/material.dart';
import 'package:travel_ui/app/core/constants/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
              color: const Color.fromARGB(238, 255, 158, 26),
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("assets/images/Open-Peeps-Bust.png"))),
        ),
        // const SizedBox(width: 8),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Howdy",
                style: TextStyle(
                    color: greyDark,
                    fontSize: 12,
                    fontWeight: FontWeight.w400)),
            Text(
              "Amak Charli",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
            )
          ],
        ),
        const SizedBox(
          width: 165,
        ),
        Container(
          height: 44,
          width: 44,
          decoration: BoxDecoration(
              color: primary, borderRadius: BorderRadius.circular(40)),
          child: Center(
            child: SvgPicture.asset(
              "assets/icons/notification.svg",
              semanticsLabel: "Home Icon",
            ),
          ),
        )
      ],
    );
  }
}
