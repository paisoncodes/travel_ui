import 'package:flutter/material.dart';
import 'package:travel_ui/app/core/constants/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({
    Key? key,
    required this.width,
  }) : super(key: key);
  final double width;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 48,
          width: width * 0.75,
          decoration: BoxDecoration(
            color: const Color.fromARGB(238, 255, 255, 255),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                offset: const Offset(6, 8),
                blurRadius: 15, // changes position of shadow
              ),
            ],
          ),
          child: Row(
            children: const [
              SizedBox(width: 10),
              Icon(
                Icons.search,
                color: greyDark,
              ),
              SizedBox(width: 8),
              Text("Search location",
                  style: TextStyle(
                      color: greyDark,
                      fontSize: 14,
                      fontWeight: FontWeight.w400))
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          padding: const EdgeInsets.all(15),
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: primary,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                offset: const Offset(6, 8),
                blurRadius: 15, // changes position of shadow
              ),
            ],
          ),
          child: SvgPicture.asset(
            "assets/icons/filter.svg",
            semanticsLabel: "Home Icon",
          ),
        )
      ],
    );
  }
}
