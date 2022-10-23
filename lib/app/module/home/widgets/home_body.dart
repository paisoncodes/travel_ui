import 'package:flutter/material.dart';
import 'package:travel_ui/app/core/constants/colors.dart';
import 'package:travel_ui/app/module/home/widgets/home_categories.dart';
import 'package:travel_ui/app/module/home/widgets/home_places.dart';
import 'package:travel_ui/app/module/home/widgets/home_screen_header.dart';
import 'package:travel_ui/app/module/home/widgets/home_search.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeScreenHeader(),
          const SizedBox(height: 28),
          const SizedBox(
            width: 250,
            child: Text(
              "Where would you like to go?",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          HomeSearch(
            width: width,
          ),
          const SizedBox(
            height: 20,
          ),
          const HomeCategories(),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Favorite Places",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Text("View all",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: greyDark)),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          HomePlacesList(width: width)
        ],
      ),
    ));
  }
}
