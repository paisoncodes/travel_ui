import 'package:flutter/material.dart';
import 'package:travel_ui/app/widgets/favorite_places.dart';

class HomePlacesList extends StatelessWidget {
  const HomePlacesList({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: () => Navigator.pushNamed(context, "detail"),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: FavoritePlaces(width: width, index: index),
                  ));
            }),
      ),
    );
  }
}
