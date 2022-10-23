import 'package:flutter/material.dart';
import 'package:travel_ui/app/widgets/location_and_price.dart';

class DetailImageAndLocation extends StatelessWidget {
  const DetailImageAndLocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Container(
              height: 332,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image:
                        AssetImage("assets/images/Rectangle-5.png"),
                  ),
                  borderRadius: BorderRadius.circular(20))),
          const SizedBox(
            height: 30,
          ),
          const LocationAndPrice()
        ],
      ),
    );
  }
}
