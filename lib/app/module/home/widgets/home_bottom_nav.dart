// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeBottomNav extends StatelessWidget {
  const HomeBottomNav({
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            "assets/icons/home.svg",
            semanticsLabel: "Home Icon",
          ),
          SvgPicture.asset(
            "assets/icons/promo.svg",
            semanticsLabel: "Promo Icon",
          ),
          SvgPicture.asset(
            "assets/icons/profile.svg",
            semanticsLabel: "Profile Icon",
          ),
          SvgPicture.asset(
            "assets/icons/notes.svg",
            semanticsLabel: "Notes Icon",
          ),
        ],
      ),
    );
  }
}
